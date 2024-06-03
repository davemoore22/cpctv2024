/*
 * Transversion for the Amstrad CPC
 * Copyright (C) 2024 Dave Moore
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; If not, see <http://www.gnu.org/licenses/>.
 */

#include "game.h"

/* Game Options */
bool g_music_sfx;

/* Interrupt Indexes and Counters  */
u8 g_int_idx = 0;
u8 g_frame_c = 0;

/* Enemies */
enemy_t g_enemies[4];
bolt_t g_bolts[4];
u8 g_bolt_count = 0;

/* Working Level Data */
u8 g_level[25 * 17];
u8 g_pods_left;
u8 g_current_level;
u8 g_current_round;
u8 g_lives_left;

/* Player Spaceship  */
player_t g_player;

/* Hi-Score Table */
score_t g_hiscores[10];

/* Keyboard Controls */
cpct_keyID g_controls[9];

/* Current Score */
u32 g_current_score;
static u32 b_score;

/* Game Grid Screen Location */
static const pos_t hud_loc = {.x = 0 * LINE_P_W, .y = 0 * LINE_P_H};
static const pos_t player_st = {.x = 12, .y = 8};
static const dim_t sc_sz = {.w = 13, .h = 11};
static const dim_t pa_sz = {.w = 13, .h = 5};

/* Redrawing */
static i8 r_px, r_py;

/* Set up Game */
void g_setup(void) {

	/* Sound and Music on by default */
	g_music_sfx = true;

	/* Default Keyboard Controls */
	g_controls[KEY_UP] = Key_Q;
	g_controls[KEY_DOWN] = Key_A;
	g_controls[KEY_LEFT] = Key_O;
	g_controls[KEY_RIGHT] = Key_P;
	g_controls[KEY_PAUSE] = Key_H;
	g_controls[JOY_UP] = Joy0_Up;
	g_controls[JOY_DOWN] = Joy0_Down;
	g_controls[JOY_LEFT] = Joy0_Left;
	g_controls[JOY_RIGHT] = Joy0_Right;

	/*
	 * Populate Hi-Score table (in ascending order as this will be the order
	 * it is sorted into by the Quicksoft algorithm - presorted for speed!
	 */
	h_insert("DSM", 10, 0);
	h_insert("DSM", 100, 1);
	h_insert("DSM", 1000, 2);
	h_insert("DSM", 10000, 3);
	h_insert("DSM", 20000, 4);
	h_insert("DSM", 30000, 5);
	h_insert("DSM", 40000, 6);
	h_insert("DSM", 50000, 7);
	h_insert("DSM", 100000, 8);
	h_insert("DSM", 250000, 9);
}

/* Start a new game */
void g_start(void) {

	bool game_over = false, lvl_complete = false, vic_cont;

	/* Initial Settings */
	g_current_level = 1;
	g_current_round = 1;
	g_lives_left = 5;
	g_current_score = 0;

	/* Keep going until game over! */
	while (!game_over) {

		/* Display transition screen */
#ifndef DEBUG_SKIP_BETWEEN
		b_scr_start(SCR_GET_READY);

		b_scr_stop();
#endif

		v_blk_scr();
		v_clr_scr();

		/* Load the Level */
		g_load_level();
		g_reset_enemies();

		/* Setup Interrupts and Clock */
		g_reset_timers();

		/* Start Music */
		InitSound();
		PlayMusic(0);
		cpct_setInterruptHandler(g_interrupt);

		u_reset_clock();
		v_reset_pal();

		g_clock_on = true;

		/* Play Level */
		lvl_complete = g_play_level();

		/* Do End Game Success Screen */
		if (lvl_complete && (g_current_round == 1) &&
			(g_current_level == 8)) {

			c_scr_start();
			vic_cont = c_can_continue();
			if (!vic_cont) {
				game_over = true;
				g_lives_left = 0;
				lvl_complete = false;	
			}
			c_scr_stop();
			lvl_complete = true;
		}

		/* Stop Clock */
		g_clock_on = false;
		g_stop();

		if (lvl_complete) {

			/* Level Completed so onto the next! */
			++g_current_level;
			if (g_current_level > 8) {
				++g_current_round;
				g_current_level = 1;
				++g_lives_left;
			}
		} else {

			/* Level Failed so lose a live */
			if (g_lives_left < 1) {

				/* Display Game over screen */
				g_stop();
				b_scr_start(SCR_GAME_OVER);
				b_scr_stop();
				h_enter_start();
				h_stop();

				game_over = true;
			} else {
				v_wipe_scr(true);
				cpct_removeInterruptHandler();
				g_reset_timers();
				--g_lives_left;
			}
		}
	}
}

/* Stop a game */
void g_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
	cpct_removeInterruptHandler();
	StopMusic();
}

/* Load level data */
static void g_load_level(void) {

	char *byte_p;
	char byte;
	u8 count = 0;
	u16 idx = 0;
	i8 bit;

	/* Reset Working Level Storage and Load Level Data */
	cpct_memset(&g_level, FLAG_GRID, sizeof(g_level));
	byte_p = g_game_grids[g_current_level - 1];

	/* Initialise Sprite Buffer */
	v_init_sprites(g_current_level);

	/* Uncompress Level Data */
	for (u8 i = 0; i < 54; i++) {

		byte = *byte_p;
		bit = 8;
		while (--bit >= 0) {
			if (byte & u_power_2(bit)) {
				g_level[idx] |= FLAG_POD;
				++count;
			}
			++idx;
		}
		if (idx > 425)
			break;
		byte_p++;
	}

	g_pods_left = count;
}

/* Draw the HUD */
static void g_draw_HUD(void) {

	u8 width;

	/* Print the Current Score */
	v_print(g_strings[81], 0, hud_loc.y, FONT_RED);
	v_print(g_strings[80], 6, hud_loc.y, FONT_BLUE);
	g_draw_score();

	/* Print the High Score */
	v_print(g_strings[82], 54, hud_loc.y, FONT_RED);
	v_print(g_strings[80], 60, hud_loc.y, FONT_BLUE);
	width = u_get_width(g_hiscores[9].score);
	v_print_n(g_hiscores[9].score, 60 + (20 - (width * 2)), hud_loc.y,
		FONT_BLUE);

	/* Display Round and Level */
	v_print(g_strings[84], 28, hud_loc.y, FONT_RED);
	v_print_n(g_current_round, 34, hud_loc.y, FONT_BLUE);
	v_print(g_strings[85], 36, hud_loc.y, FONT_BLUE);
	v_print_n(g_current_level, 38, hud_loc.y, FONT_BLUE);

	/* Display Lives */
	v_print(g_strings[83], 42, hud_loc.y, FONT_RED);
	v_print(g_strings[86], 48, hud_loc.y, FONT_BLUE);
	width = u_get_width(g_lives_left);
	v_print_n(g_lives_left, 48 + (4 - (width * 2)), hud_loc.y, FONT_BLUE);
}

/* Draw the Score */
static void g_draw_score() {

	u8 width;

	/* Print the Current Score */
	width = u_get_width(g_current_score);
	v_print_n(
		g_current_score, 6 + (20 - (width * 2)), hud_loc.y, FONT_BLUE);
}

/* Reset Player */
static void g_reset_player(void) {

	g_player.dir = DIR_EAST;
	g_player.x = player_st.x;
	g_player.y = player_st.y;
	g_player.px = player_st.x;
	g_player.py = player_st.y;
	g_player.boost = false;
	g_player.explode = false;
	g_player.explode_f = 0;

	/* Player sprite is 10x20 pixels (5x20 bytes), so we need to adjust */
	g_player.sx = GRID_LOC_X + (g_player.x * GRID_P_W) + ADJ_PLAYER_PX;
	g_player.sy = GRID_LOC_Y + (g_player.y * GRID_P_H) + ADJ_PLAYER_PY;
}

/* Check for User Input */
static bool g_check_input_meta(bool *pause, bool *quit, bool *skip,
	bool *victory) {

	*pause = false;
	*quit = false;
	*skip = false;
	*victory = false;

	/* Check for other Meta Input */
	if (cpct_isKeyPressed(g_controls[KEY_PAUSE])) {
		*pause = true;
		return true;
	} else if (cpct_isKeyPressed(Key_Esc)) {
		*quit = true;
		return true;
	} else if (cpct_isKeyPressed(Key_C)) {
		*skip = true;
		return true;
	} else if (cpct_isKeyPressed(Key_Z)) {
		*victory = true;
		return true;
	}

	return false;
}

/* Check for User Input */
static bool g_check_input_movement(bool *moved, bool *rotated, bool *eaten) {

	*moved = false;
	*rotated = false;
	*eaten = false;

	/* Check for Player Movement and set appropriate flags */
	if (cpct_isKeyPressed(g_controls[KEY_LEFT]) ||
		cpct_isKeyPressed(g_controls[JOY_LEFT])) {
		*moved = g_move_player(DIR_WEST, rotated);
		*eaten = g_eat_pod();
		return true;
	} else if (cpct_isKeyPressed(g_controls[KEY_RIGHT]) ||
		   cpct_isKeyPressed(g_controls[JOY_RIGHT])) {
		*moved = g_move_player(DIR_EAST, rotated);
		*eaten = g_eat_pod();
		return true;
	} else if (cpct_isKeyPressed(g_controls[KEY_UP]) ||
		   cpct_isKeyPressed(g_controls[JOY_UP])) {
		*moved = g_move_player(DIR_NORTH, rotated);
		*eaten = g_eat_pod();
		return true;
	} else if (cpct_isKeyPressed(g_controls[KEY_DOWN]) ||
		   cpct_isKeyPressed(g_controls[JOY_DOWN])) {
		*moved = g_move_player(DIR_SOUTH, rotated);
		*eaten = g_eat_pod();
		return true;
	}

	return false;
}

/* Check for Bolts */
static bool g_check_launch_bolts() {

	bool new_bolt = false;


	for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
		if (g_check_collision(i)) {
			g_fire_bolt(i);
			g_enemies[i].fired = true;
			new_bolt = true;
		}
	}

	return new_bolt;
}

/* Handle playing a level */
static bool g_play_level(void) {

	bool e_mv = false, e_sh = false, s_up = false, b_mv = false;
	bool p_rt = false, p_mv = false, p_et = false, input = false;
	bool pause = false, success = false, quit = false, victory = false;
	u8 max_b_tm, sc_mod;
	u16 b_tm = 0;

	/* Reset Player and Do Initial Drawing */
	g_reset_player();
	g_reset_enemies();
	g_draw_HUD();
	v_draw_grid();
	v_draw_enemies();

	max_b_tm = g_pods_left;
	sc_mod = g_current_level % 2 == 0 ? 50 : g_current_level;

	/* Do Introductory Animation */
	v_draw_launch();
	PlaySFX(4, CHANNEL_A, MAX_VOL);
	u_wait(20000);
	v_draw_grid();
	v_draw_player();

	while (!quit && !success) {

		/* Get Player Input (if any) */
		if (g_frame_c % FC_TICK == 0) {

			/* Player Movement */
			input = g_check_input_movement(&p_mv, &p_rt, &p_et);
			if (!input)
				input = g_check_input_meta(
					&pause, &quit, &success, &victory);

			/* Clear Input buffer to prevent key queueing */
			if (input)
				u_clear_input();

			/* Handle Game Control and Flow */
			if (pause) {

				/* Pause */
				g_pause();

				/* Redraw the Whole Grid */
				v_draw_grid();
				v_draw_player();
				pause = false;
				continue;
			} else if (quit) {

				/* Quit */
				g_current_score = 0;
				b_score = 0;
				g_lives_left = 0;
				continue;
			} else if (success) {

				/* Skip */
				continue;
			} else if (victory) {

				/* Display Victory Screen */
				g_current_level = 8;
				g_current_round = 1;
				continue;
			}

			/* Update Score if Player has ran over a Pod  */
			if (p_et) {
				g_pods_left--;
				g_current_score += (sc_mod * g_current_round);
				p_et = false;
				s_up = true;
			}

			/* Do Game Logic */
			if (s_up) {

				/* Redraw Score  */
				g_draw_score();
				s_up = false;
			}
		}

		if (g_frame_c % FC_TICK == 3) {

			/* Do Enemy Movement and Firing */
			b_mv = g_move_bolts();
			e_sh = g_check_launch_bolts();

#ifndef DEBUG_INVULNERABLE
			/* Check for Death */
			if (g_check_death()) {

				/* Death Animation */
				g_explode_player();
				return false;
			}
#endif
		}

		if (g_frame_c % FC_TICK == 3)
			e_mv = g_move_enemies();

	
		/* Now do any drawing that is needed */
		if (b_mv || e_sh || p_mv) {

			/* Redraw only changed cells */
			if (b_mv || e_sh) {
				v_draw_bolts(true);
				b_mv = false;
				e_sh = false;
			}

			if (p_mv) {
				g_player.boost = !p_rt;

				/* Redraw area around Player */
				v_draw_player_bb(r_px, r_py);
			}

			v_draw_player();

			p_mv = false;
			p_rt = false;
		}

		if (e_mv) {

			/* Undraw and Redraw enemies */
			v_draw_enemies();

			e_mv = false;
		}

		/* Level Complete */
		if (g_pods_left == 0) {

			/* Work out any bonus score */
			b_tm = max_b_tm - g_clock.s;
			b_score = b_tm > 0 ? b_tm * g_current_level *
						     g_current_round
					   : 0;

			success = true;
			continue;
		}
	}

	if (quit)
		return false;

	if (success) {

		/* Display Stage Clear Message */
		u_clear_input();
		g_draw_stage_clear();
		cpct_setBorder(HW_LIME);
		PlaySFX(3, CHANNEL_A, MAX_VOL);
		u_clear_input();
		g_stage_clear();
		cpct_setBorder(HW_BLACK);
		return success;
	}

	return success;
}

static bool g_check_death(void) {

	for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {

		if (g_bolts[i].active) {

			if (u_check_collide(g_player.x, g_player.y,
				g_bolts[i].x, g_bolts[i].y))
				return true;
		}
	}

	return false;
}

/* Collision detection */
static bool g_check_collision(const dir_t enemy) {

	/* Note player position off by 1/12 bytes/lines vs enemy position */
	switch (enemy) {
	case DIR_NORTH:
	case DIR_SOUTH:
		if (g_enemies[enemy].loc == (g_player.x))
			return true;
		break;
	case DIR_EAST:
	case DIR_WEST:
		if (g_enemies[enemy].loc == (g_player.y))
			return true;
		break;
	default:
		return false;
	}

	return false;
}

/* Stage Clear */
static void g_stage_clear(void) {

	u16 duration = 5;
	bool kp = false;

	/* Reset Clock */
	g_clock_on = false;
	u_reset_clock();
	g_clock_on = true;

	/* Display for a number of seconds or until a keypress */
	u_clear_input();
	u_clear_input();

	while ((!kp) && (g_clock.s < duration)) {

		/* Check for a keypress */
		cpct_scanKeyboard();
		kp = cpct_isAnyKeyPressed();
	}

	/* Stop Clock */
	g_clock_on = false;
	u_reset_clock();
}

/* Pause */
static void g_pause(void) {

	bool kp = false;

	u_clear_input();
	g_draw_pause();
	u_wait_for_key(Key_Space);
}

/* Move the Player in the Desired Direction if possible */
static bool g_move_player(const dir_t new_dir, bool *is_rot) {

	u8 dx, dy;

	/* Check if we can move in the designated direction */
	u_get_delta(new_dir, &dx, &dy);
	if (u_bounds_delta_check(g_player.x, g_player.y, dx, dy)) {

		/* Before moving, set the grid cells to redraw */
		r_px = g_player.x - 1;
		r_py = g_player.y - 1;
		if (r_px < 0)
			r_px = 0;

		/* We can move! */
		*is_rot = g_player.dir == new_dir;
		g_player.dir = new_dir;
		g_player.px = g_player.x;
		g_player.py = g_player.y;
		g_player.x += dx;
		g_player.y += dy;
		g_player.sx = GRID_LOC_X + (g_player.x * GRID_P_W) +
			ADJ_PLAYER_PX;
		g_player.sy = GRID_LOC_Y + (g_player.y * GRID_P_H) +
			ADJ_PLAYER_PY;

		return true;
	} else
		return false;
}

/* Reset Enemy Positions */
static void g_reset_enemies(void) {

	/* Deltas */
	const i8 e_dt[4][2] = {{1, 0}, {0, 1}, {-1, 0}, {0, -1}};
	const i8 b_dt[4][2] = {{0, 1}, {-1, -0}, {0, -1}, {1, 0}};
	const u8 bounds[4][2] = {{0, GRID_U_W - 1}, {0, GRID_U_H - 1},
		{0, GRID_U_W - 1}, {0,  GRID_U_H - 1}};

	/* Set up Enemies */
	for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
		g_enemies[i].side = i;
		g_enemies[i].dx = e_dt[i][0];
		g_enemies[i].dy = e_dt[i][1];
		g_enemies[i].fired = false;
		g_enemies[i].min = bounds[i][0];
		g_enemies[i].max = bounds[i][1];
		g_enemies[i].loc = i <= DIR_EAST ? g_enemies[i].min + 1 :
			g_enemies[i].max - 1;
		g_enemies[i].prev = g_enemies[i].loc;
	}

	/* Set up Bolts */
	for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
		g_bolts[i].side = i;
		g_bolts[i].x = 0;
		g_bolts[i].y = 0;
		g_bolts[i].px = g_bolts[i].x;
		g_bolts[i].py = g_bolts[i].y;
		g_bolts[i].active = false;
		g_bolts[i].dc = false;
		g_bolts[i].dp = false;
		g_bolts[i].dx = b_dt[i][0];
		g_bolts[i].dy = b_dt[i][1];
	}

	g_bolt_count = 0;
}

/* Move the enemies (if we can) */
static bool g_move_enemies(void) {

	int loc;
	bool result = false;

	/* For each enemy */
	for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {

		/* Only enemies that don't have a bolt out can move */
		if (!g_enemies[i].fired) {

			if (i % 2 == 0) {
				loc = g_enemies[i].loc + g_enemies[i].dx;
				if (loc < g_enemies[i].min) {
					loc = g_enemies[i].min;
					g_enemies[i].dx = -g_enemies[i].dx;
				} else if (loc > g_enemies[i].max) {
					loc = g_enemies[i].max;
					g_enemies[i].dx = -g_enemies[i].dx;
				}
				g_enemies[i].prev = g_enemies[i].loc;
				g_enemies[i].loc = loc;
				result = true;
			} else {
				loc = g_enemies[i].loc + g_enemies[i].dy;
				if (loc < g_enemies[i].min) {
					loc = g_enemies[i].min;
					g_enemies[i].dy = -g_enemies[i].dy;
				} else if (loc > g_enemies[i].max) {
					loc = g_enemies[i].max;
					g_enemies[i].dy = -g_enemies[i].dy;
				}
				g_enemies[i].prev = g_enemies[i].loc;
				g_enemies[i].loc = loc;
				result = true;
			}
		} else {

			/* If an enemy hasn't moved */
			g_enemies[i].prev = g_enemies[i].loc;
		}
	}

	return result;
}

/* Move Bolts */
static bool g_move_bolts(void) {

	bool mv = false;
	u8 flag;
	int tx, ty;
	u16 idx;

	for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {

		if (g_bolts[i].active) {

			flag = i % 2 == 0 ? FLAG_V_BOLT : FLAG_H_BOLT;

			/* Clear Old Bolt */
			idx = u_get_xy(g_bolts[i].x, g_bolts[i].y);
			g_level[idx] &= ~flag;
			g_bolts[i].px = g_bolts[i].x;
			g_bolts[i].py = g_bolts[i].y;

			g_bolts[i].dp = true;
			g_bolts[i].dp_x = g_bolts[i].x;
			g_bolts[i].dp_y = g_bolts[i].y;
			g_bolts[i].dc = false;

			/* Check if movement of bolt would be out of bounds */
			tx = g_bolts[i].x + g_bolts[i].dx;
			ty = g_bolts[i].y + g_bolts[i].dy;
			if (!u_bounds_check(tx, ty)) {

				/* Out of bounds so get rid of bolt */
				g_bolts[i].active = false;
				--g_bolt_count;
				g_enemies[i].fired = false;

				/* DP needs to be set to true to enable redraw*/

			} else {

				/* It doesn't so reposition bolt */
				g_bolts[i].x = g_bolts[i].x + g_bolts[i].dx;
				g_bolts[i].y = g_bolts[i].y + g_bolts[i].dy;
				idx = u_get_xy(g_bolts[i].x, g_bolts[i].y);
				g_level[idx] |= flag;
				g_bolts[i].dc = true;
				g_bolts[i].dc_x = g_bolts[i].x;
				g_bolts[i].dc_y = g_bolts[i].y;
			}
			mv = true;
		}
	}

	return mv;
}

/* Fire Bolt */
static void g_fire_bolt(const dir_t dir) {

	u16 idx;

	/* Sanity Checks */
	if (g_bolts[dir].active || g_bolt_count == 4)
		return;

	switch (dir) {
	case DIR_NORTH:
		g_bolts[dir].x = g_enemies[dir].loc;
		g_bolts[dir].y = 0;
		idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
		g_level[idx] |= FLAG_V_BOLT;
		break;
	case DIR_SOUTH:
		g_bolts[dir].x = g_enemies[dir].loc;
		g_bolts[dir].y = GRID_U_H - 1;
		idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
		g_level[idx] |= FLAG_V_BOLT;
		break;
	case DIR_EAST:
		g_bolts[dir].x = GRID_U_W - 1;
		g_bolts[dir].y = g_enemies[dir].loc;
		idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
		g_level[idx] |= FLAG_H_BOLT;
		break;
	case DIR_WEST:
		g_bolts[dir].x = 0;
		g_bolts[dir].y = g_enemies[dir].loc;
		idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
		g_level[idx] |= FLAG_H_BOLT;
		break;
	default:
		return;
		break;
	}

	/* And reset the previous square since the bolt is just launched */
	g_bolts[dir].dp = false;
	g_bolts[dir].dc = true;
	g_bolts[dir].dc_x = g_bolts[dir].x;
	g_bolts[dir].dc_y = g_bolts[dir].y;
	g_bolts[dir].px = g_bolts[dir].x;
	g_bolts[dir].py = g_bolts[dir].x;
	g_bolts[dir].active = true;
	++g_bolt_count;
}

/* Eliminate Pod */
static bool g_eat_pod() {

	u16 idx;

	/* Check if we have a pod to elimate/eat */
	idx = u_get_xy(g_player.x, g_player.y);

	if (g_level[idx] & FLAG_POD) {
		g_level[idx] &= ~FLAG_POD;
		if (g_music_sfx)
			PlaySFX(1, CHANNEL_A, MAX_VOL);
		return true;
	} else
		return false;
}

/* Interrupt for Main Game */
void g_interrupt(void) {

	if (g_int_idx == 0)
		g_frame_c = ++g_frame_c % FC_MAX;

	if (g_int_idx == 1)
		cpct_scanKeyboard_if();

	/* Play Music */
	if (g_music_sfx)
		if (g_int_idx == 3)
	 		 PlaySound();

	g_int_idx = ++g_int_idx % 6;

	/* Call the real time clock whilst in game */
	u_clock_interrupt();
}

/* Reset Interrupt Timers */
void g_reset_timers(void) {

	g_int_idx = 0;
	g_frame_c = 0;
}

/* Draw Pause */
static void g_draw_pause(void) {

	const u8 pw = pa_sz.w * GRID_P_W, ph = pa_sz.h * GRID_P_H;
	u8 x, y, ty;
	const u8 l = 30;

	/* Work out Box Position */
	x = 80 - (pw + (2 * GRID_P_W));
	y = 200 - (ph + (2 * GRID_P_H));
	x = x / 2;
	y = y / 2;

	v_draw_box(&pa_sz);

	/* Pause Message */
	ty = y + LINE_P_H * 3;
	v_print_c(g_strings[94], ty, FONT_RED);
	ty = ty + LINE_P_H * 3;
	v_print_c(g_strings[95], ty, FONT_RED);
}

/* Draw Message */
static void g_draw_stage_clear(void) {

	const u8 pw = sc_sz.w * GRID_P_W, ph = sc_sz.h * GRID_P_H;
	u8 x, y, ty, width;
	const u8 l = 30;

	/* Work out Box Position */
	x = 80 - (pw + (2 * GRID_P_W));
	y = 200 - (ph + (2 * GRID_P_H));
	x = x / 2;
	y = y / 2;

	v_draw_box(&sc_sz);

	/* Stage Clear Message */
	ty = y + LINE_P_H * 3;
	v_print_c(g_strings[90], ty, FONT_RED);
	ty += (LINE_P_H * 4);

	/* Score */
	v_print_c(g_strings[91], ty, FONT_RED);
	ty += LINE_P_H + 2;
	v_print(g_strings[80], l, ty, FONT_BLUE);
	width = u_get_width(g_current_score);
	v_print_n(g_current_score, l + (20 - (width * 2)), ty, FONT_BLUE);

	/* Bonus Score */
	ty += (LINE_P_H * 2);
	v_print_c(g_strings[92], ty, FONT_RED);
	ty += LINE_P_H + 2;
	v_print(g_strings[80], l, ty, FONT_BLUE);
	width = u_get_width(b_score);
	v_print_n(b_score, l + (20 - (width * 2)), ty, FONT_BLUE);

	/* Total Score */
	g_current_score += b_score;
	ty += (LINE_P_H * 2);
	v_print_c(g_strings[93], ty, FONT_RED);
	ty += LINE_P_H + 2;
	v_print(g_strings[80], l, ty, FONT_BLUE);
	width = u_get_width(g_current_score);
	v_print_n(g_current_score, l + (20 - (width * 2)), ty, FONT_BLUE);
}

static void g_explode_player(void) {

	cpct_setBorder(HW_BRIGHT_RED);
	PlaySFX(5, CHANNEL_A, MAX_VOL);
	g_player.explode = true;
	g_player.explode_f = 0;
	v_draw_player_bb(r_px, r_py);
	v_draw_player();
	while (g_player.explode_f < 5) {

		if (g_frame_c % FC_EXPLODE == 0) {
			v_draw_player_bb(r_px, r_py);
			v_draw_player();	
			++g_player.explode_f;		
		}
	}
	cpct_setBorder(HW_BLACK);
}