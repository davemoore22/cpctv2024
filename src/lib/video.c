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

#include "video.h"

/* Interrupt Indexes */
u8 v_int_idx = 0;
u8 v_pal_idx = 0;
u8 v_frame_c = 0;
u16 v_cycle_c = 0;

/* Player Backbuffers */
u8 v_player_buf[PLAYER_BUF_PW * PLAYER_BUF_PH];

/* Sprite Buffers (generated for each level) */
u8 *const v_cells[8] = {v_cell_buf_0, v_cell_buf_1, v_cell_buf_2, v_cell_buf_3,
	v_cell_buf_4, v_cell_buf_5, v_cell_buf_6, v_cell_buf_7};
static u8 v_cell_buf_0[GRID_P_W * GRID_P_H];
static u8 v_cell_buf_1[GRID_P_W * GRID_P_H];
static u8 v_cell_buf_2[GRID_P_W * GRID_P_H];
static u8 v_cell_buf_3[GRID_P_W * GRID_P_H];
static u8 v_cell_buf_4[GRID_P_W * GRID_P_H];
static u8 v_cell_buf_5[GRID_P_W * GRID_P_H];
static u8 v_cell_buf_6[GRID_P_W * GRID_P_H];
static u8 v_cell_buf_7[GRID_P_W * GRID_P_H];

/* Sprite Mappings */
static const u8 v_spr_map[8] = {
	FLAG_GRID,
	FLAG_GRID | FLAG_POD,
	FLAG_GRID | FLAG_V_BOLT,
	FLAG_GRID | FLAG_H_BOLT,
	FLAG_GRID | FLAG_V_BOLT | FLAG_H_BOLT,
	FLAG_GRID | FLAG_POD | FLAG_V_BOLT,
	FLAG_GRID | FLAG_POD | FLAG_H_BOLT,
	FLAG_GRID | FLAG_POD | FLAG_V_BOLT | FLAG_H_BOLT
};

static const pos_t launch_st = {.x = 12, .y = 7};

/* Draw logo */
void v_draw_logo() {

	/* Decompresse image data from a compressed file onto the screen */
	cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_titles_end);
}

/* Initialise Video and Clear the Screen */
void v_init(void) {

	/* Note that Firmware is disabled */
	cpct_disableFirmware();
	cpct_setVideoMode(0);
	cpct_waitVSYNCStart();
	cpct_clearScreen_f64(0);
}

/* Reset all Screen Pens to Black, effectively blanking the screen */
void v_blk_scr(void) {

	static const u8 blank_pal[16] = {HW_BLACK, HW_BLACK, HW_BLACK, HW_BLACK,
		HW_BLACK, HW_BLACK, HW_BLACK, HW_BLACK, HW_BLACK, HW_BLACK,
		HW_BLACK, HW_BLACK, HW_BLACK, HW_BLACK, HW_BLACK, HW_BLACK};

	cpct_removeInterruptHandler();
	cpct_waitVSYNC();
	cpct_setPalette(blank_pal, sizeof(blank_pal));
	cpct_setBorder(HW_BLACK);
}

/* Wipe the Screen in a Direction */
void v_wipe_scr(bool dir) {

	u8 *v_pos;

	if (dir) {

		/* Wipe to the right */
		for (u8 x = 0; x < 80; x++) {
			if (x % 2 == 0) {
				cpct_waitVSYNC();
				v_pos = v_get_pos(x, 0);
				cpct_drawSolidBox(v_pos, 0, 2, 200);
			}
		}
	} else {

		/* Wipe to the left */
		for (u8 x = 78; x > 0; x--) {
			if (x % 2 == 0) {
				cpct_waitVSYNC();
				v_pos = v_get_pos(x, 0);
				cpct_drawSolidBox(v_pos, 0, 2, 200);
			}
		}
	}
}

/* Clear the Screen to Pen 0 */
void v_clr_scr(void) {

	cpct_waitVSYNCStart();
	cpct_clearScreen_f64(0);
}

/* Print a string using the Font sprites but centered horizontally */
void v_print_c(const char *str, const u8 y, const pen_t pen) {

	u8 x = (40) - (strlen(str) * 2) / 2;

	v_print(str, x, y, pen);
}

/* Print a number using the Font sprites */
void v_print_n(const i64 num, const u8 x, const u8 y, const pen_t pen) {

	char str[40];

	/* Handle large integers */
	sprintf(str, "%lld", num);
	v_print(str, x, y, pen);
}

/* Print a string using the Font sprites */
void v_print(const char *str, const u8 x, const u8 y, const pen_t pen) {

	u8 *v_pos;
	u8 cx = x, cy = y;
	size_t i = 0;
	int idx, offset;

	/* Iterate the through string */
	while (str[i] != '\0') {

		/* Tilemap for Text starts at ASCII 32 (Space) */
		switch (pen) {
		case FONT_BLUE:
			offset = 96;
			break;
		case FONT_WHITE:
			offset = 96 + 96;
			break;
		default:
			offset = 0;
			break;
		};
		idx = (int)str[i] - 32;
		idx += offset;

		v_pos = v_get_pos(cx, cy);
		cpct_drawSprite(font_ts[idx], v_pos, 2, 6);

		/* As we're in Mode 0, move on 2 bytes (4 pixels) */
		cx = cx + LINE_P_W;
		i++;
	}
}

/* Reset the Palette back to Normal Mode 0 Colours */
void v_reset_pal(void) {

	static const u8 normal_pal[16] = {HW_BLACK, HW_BRIGHT_BLUE, HW_RED,
		HW_MAGENTA, HW_BRIGHT_RED, HW_GREEN, HW_SKY_BLUE, HW_WHITE,
		HW_PASTEL_BLUE, HW_ORANGE, HW_PASTEL_MAGENTA, HW_BRIGHT_GREEN,
		HW_BRIGHT_CYAN, HW_BRIGHT_YELLOW, HW_PASTEL_YELLOW,
		HW_BRIGHT_WHITE};

	cpct_waitVSYNC();
	cpct_setPalette(normal_pal, sizeof(normal_pal));
	cpct_setBorder(HW_BLACK);
}

/* Victory Screen Palette  */
void v_reset_pal_v(void) {

	static const u8 victory_pal[16] = {HW_BLACK, HW_RED, HW_WHITE, HW_BLUE,
		HW_SKY_BLUE, HW_BRIGHT_WHITE, HW_CYAN, HW_BRIGHT_RED, HW_YELLOW,
		HW_PINK, HW_MAGENTA, HW_ORANGE, HW_PASTEL_BLUE, HW_PASTEL_CYAN,
		HW_PASTEL_YELLOW, HW_PURPLE};

	cpct_waitVSYNC();
	cpct_setPalette(victory_pal, sizeof(victory_pal));
	cpct_setBorder(HW_BLACK);

}

/* Wait for a specified number of VSYNCs */
void v_wait_VSYNC(u8 n) {

	do {
		cpct_waitVSYNC();
		if (--n) {
			__asm__("halt");
			__asm__("halt");
		}
	} while (n);
}

/* Get Screen Position from Byte Coordinates */
inline u8* v_get_pos(const u8 x, const u8 y) {

	return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
}

/* Flash the Screen Border for a specified duration */
void v_flash_brd(u8 col, u16 n) {

	cpct_setPALColour(16, col);
	u_wait(n * 15);
	cpct_setPALColour(16, HW_BLACK);
}

/* Reset Interrupt Timers */
void v_reset_timers(void) {

	v_int_idx = 0;
	v_pal_idx = 0;
	v_frame_c = 0;
}

/* Interrupt for Rasters and Colour Cycling */
void v_interrupt(void) {

	/* Data for Logo Animation Rasters */
	static const u8 anim_pal[7][9] = {
		{HW_BLACK, HW_BRIGHT_RED, HW_BRIGHT_BLUE, HW_SKY_BLUE,
			HW_BRIGHT_CYAN, HW_BRIGHT_WHITE, HW_BRIGHT_CYAN,
			HW_SKY_BLUE, HW_BRIGHT_BLUE},
		{HW_BLACK, HW_BRIGHT_RED, HW_BRIGHT_BLUE, HW_BRIGHT_BLUE,
			HW_SKY_BLUE, HW_BRIGHT_CYAN, HW_BRIGHT_WHITE,
			HW_BRIGHT_CYAN, HW_SKY_BLUE},
		{HW_BLACK, HW_BRIGHT_RED, HW_SKY_BLUE, HW_BRIGHT_BLUE,
			HW_BRIGHT_BLUE, HW_SKY_BLUE, HW_BRIGHT_CYAN,
			HW_BRIGHT_WHITE, HW_BRIGHT_CYAN},
		{HW_BLACK, HW_BRIGHT_RED, HW_BRIGHT_CYAN, HW_SKY_BLUE,
			HW_BRIGHT_BLUE, HW_BRIGHT_BLUE, HW_SKY_BLUE,
			HW_BRIGHT_CYAN, HW_BRIGHT_WHITE},
		{HW_BLACK, HW_BRIGHT_RED, HW_BRIGHT_WHITE, HW_BRIGHT_CYAN,
			HW_SKY_BLUE, HW_BRIGHT_BLUE, HW_BRIGHT_BLUE,
			HW_SKY_BLUE, HW_BRIGHT_CYAN},
		{HW_BLACK, HW_BRIGHT_RED, HW_BRIGHT_CYAN, HW_BRIGHT_WHITE,
			HW_BRIGHT_CYAN, HW_SKY_BLUE, HW_BRIGHT_BLUE,
			HW_BRIGHT_BLUE, HW_SKY_BLUE},
		{HW_BLACK, HW_BRIGHT_RED, HW_SKY_BLUE, HW_BRIGHT_CYAN,
			HW_BRIGHT_WHITE, HW_BRIGHT_CYAN, HW_SKY_BLUE,
			HW_BRIGHT_BLUE, HW_BRIGHT_BLUE}};

	/* Normal Palette */
	static const u8 fixed_pal[16] = {HW_BLACK, HW_BRIGHT_BLUE, HW_RED,
		HW_MAGENTA, HW_BRIGHT_RED, HW_GREEN, HW_SKY_BLUE, HW_WHITE,
		HW_PASTEL_BLUE, HW_ORANGE, HW_PASTEL_MAGENTA, HW_BRIGHT_GREEN,
		HW_BRIGHT_CYAN, HW_BRIGHT_YELLOW, HW_PASTEL_YELLOW,
		HW_BRIGHT_WHITE};

	/* Set the Palette */
	if (v_int_idx == 0)
		cpct_setPalette(anim_pal[v_pal_idx], 9);
	else if (v_int_idx == 1)
		cpct_setPalette(fixed_pal, 16);

	if (v_frame_c == 0)
		v_pal_idx = ++v_pal_idx % 7;

	/* Scan Keyboard every 1/50 of a second */
	if (v_int_idx == 2)
		cpct_scanKeyboard_if();
	
	/* Play Music */
	if (t_in_titles && g_music_sfx)
		if (v_int_idx == 3)
	 		 PlaySound();

	/* Increase the Counters */
	v_int_idx = ++v_int_idx % 6;
	v_frame_c = ++v_frame_c % 50;
	v_cycle_c = ++v_cycle_c % 12000;
}

/* Draw Launch Pad */
void v_draw_launch(void) {

	u8 *v_pos;

	v_pos = v_get_pos(GRID_LOC_X + (launch_st.x * GRID_P_W) - 2,
		GRID_LOC_Y + (launch_st.y * GRID_P_H) + 4);

	cpct_drawSpriteMasked(img_launch, v_pos, 7, 20);
}


/* Draw the Player */
void v_draw_player(void) {

	u8 *v_pos, *e_pos;
	u8 idx;
	static const u8 spr_idx[4] = {7, 6, 8, 5};
	static const u8 b_spr_idx[4] = {3, 2, 4, 1};
	u8 ex, ey;

	/* Draw the appropriate sprite */
	if (!g_player.explode) {
		v_pos = v_get_pos(g_player.sx, g_player.sy);
		idx = g_player.boost ? spr_idx[g_player.dir] : b_spr_idx[g_player.dir];
		cpct_drawSpriteMasked(player_ts[idx], v_pos, SZ_PLAYER_PX, 
			SZ_PLAYER_PY);
	} else {
		ex = g_player.sx;
		ey = g_player.sy;
		e_pos = v_get_pos(ex, ey);
		cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
			SZ_GRID_PX, SZ_GRID_PY);
		ex += SZ_GRID_PX;
		e_pos = v_get_pos(ex, ey);
		cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
			SZ_GRID_PX, SZ_GRID_PY);
		ey += SZ_GRID_PY;
		e_pos = v_get_pos(ex, ey);
		cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
			SZ_GRID_PX, SZ_GRID_PY);
		ex -= SZ_GRID_PX;
		e_pos = v_get_pos(ex, ey);
		cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
			SZ_GRID_PX, SZ_GRID_PY);
	}
}

void v_draw_enemies(void) {

	static const u8 spr_idx[4] = {0, 2, 6, 0};
	static const u8 spr_idx_f[4] ={3, 3, 9, 1};

	u8 spr_st, loc;
	u8 *v_pos;
	i16 px, py;

	/* For each Enemy */
	for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {

		/* Get the Source Sprite */
		spr_st = g_enemies[i].fired ? spr_idx_f[i] : spr_idx[i];

		/* Find the location to draw */
		loc = g_enemies[i].loc;

		/* Convert Loc to Pixels */
		if (i % 2 == 0) {
			px = GRID_LOC_X + ((loc - 1) * GRID_P_W);
			py = i == DIR_NORTH ? GRID_LOC_Y - 8 : 
				GRID_LOC_Y + (GRID_U_H * GRID_P_H);
			if (px < 0)
				px = 0;
			if (py < 0)
				py = 0;
		} else {
			px = i == DIR_WEST ? GRID_LOC_X - 2 :
				GRID_LOC_X + (GRID_U_W * GRID_P_W);
			py = GRID_LOC_Y + ((loc - 1) * GRID_P_H);
			if (px < 0)
				px = 0;
			if (py < 0)
				py = 0;
		}

		/* Draw the Enemies  */
		if (i % 2 == 0) {

			/* North and South */
			v_pos = v_get_pos(px - 1, py);
			cpct_drawSolidBox(v_pos, 0, 1, 8);
			v_pos = v_get_pos(px, py);
			cpct_drawSprite(enemies_h_ts[spr_st], v_pos, 3, 8);
			v_pos = v_get_pos(px + 3, py);
			cpct_drawSprite(enemies_h_ts[spr_st + 1], v_pos, 3, 8);
			v_pos = v_get_pos(px + 6, py);
			cpct_drawSprite(enemies_h_ts[spr_st + 2], v_pos, 3, 8);
			v_pos = v_get_pos(px + 9, py);
			cpct_drawSolidBox(v_pos, 0, 1, 8);
		} else {

			/* West and East */
			v_pos = v_get_pos(px, py);
			cpct_drawSprite(enemies_v_ts[spr_st], v_pos, 2, 12);
			v_pos = v_get_pos(px, py + 12);
			cpct_drawSprite(enemies_v_ts[spr_st + 4], v_pos, 2, 12);
			v_pos = v_get_pos(px, py + 24);
			cpct_drawSprite(enemies_v_ts[spr_st + 8], v_pos, 2, 12);
		}
	}
}

/* Draw/Undraw Bolts */
void v_draw_bolts(const bool all) {

	if (g_bolt_count == 0)
		return;

	for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
		if (all || g_bolts[i].active) {
			if (g_bolts[i].dc) {
				v_draw_grid_cell(g_bolts[i].dc_x,
					g_bolts[i].dc_y);
				g_bolts[i].dc = false;
			}
			if (g_bolts[i].dp) {
				v_draw_grid_cell(g_bolts[i].dp_x,
					g_bolts[i].dp_y);
				g_bolts[i].dp = false;
			}
		}
	}
}

/* Draw a Box on the Screen */
void v_draw_box(const dim_t *sz) {

	u8 pw, ph, x, y, gx, gy, r;
	u8 *v_pos;

	pw = sz->w * GRID_P_W;
	ph = sz->h * GRID_P_H;

	/* Work out Box Position */
	x = 80 - (pw + (2 * GRID_P_W));
	y = 200 - (ph + (2 * GRID_P_H));
	x = x / 2;
	y = y / 2;
	v_pos = v_get_pos(x + 1, y + 2);

	/* Fill in Background */
	cpct_drawSolidBox(v_pos, 0, pw + 4, ph + 4);

	/* Draw Top */
	gx = x;
	gy = y;
	v_pos = v_get_pos(gx, gy);
	cpct_drawSpriteMasked(
		gui_ts[GUI_NORTH_WEST], v_pos, GRID_P_W, GRID_P_H);
	gx += GRID_P_W;
	for (u8 i = 0; i < sz->w; i++) {
		v_pos = v_get_pos(gx, gy);
		cpct_drawSpriteMasked(
			gui_ts[GUI_NORTH], v_pos, GRID_P_W, GRID_P_H);
		gx += GRID_P_W;
	}
	v_pos = v_get_pos(gx, gy);
	cpct_drawSpriteMasked(
		gui_ts[GUI_NORTH_EAST], v_pos, GRID_P_W, GRID_P_H);
	r = gx;

	/* Draw Bottom */
	gx = x;
	gy = y + ph;
	v_pos = v_get_pos(gx, gy);
	cpct_drawSpriteMasked(
		gui_ts[GUI_SOUTH_WEST], v_pos, GRID_P_W, GRID_P_H);
	gx += GRID_P_W;
	for (u8 i = 0; i < sz->w; i++) {
		v_pos = v_get_pos(gx, gy);
		cpct_drawSpriteMasked(
			gui_ts[GUI_SOUTH], v_pos, GRID_P_W, GRID_P_H);
		gx += GRID_P_W;
	}
	v_pos = v_get_pos(gx, gy);
	cpct_drawSpriteMasked(
		gui_ts[GUI_SOUTH_EAST], v_pos, GRID_P_W, GRID_P_H);

	/* Draw Left */
	gx = x;
	gy = y + GRID_P_H;
	for (u8 i = 1; i < sz->h; i++) {
		v_pos = v_get_pos(gx, gy);
		cpct_drawSpriteMasked(
			gui_ts[GUI_WEST], v_pos, GRID_P_W, GRID_P_H);
		gy += GRID_P_H;
	}

	/* Draw Right /*/
	gx = r;
	gy = y + GRID_P_H;
	for (u8 i = 1; i < sz->h; i++) {
		v_pos = v_get_pos(gx, gy);
		cpct_drawSpriteMasked(
			gui_ts[GUI_EAST], v_pos, GRID_P_W, GRID_P_H);
		gy += GRID_P_H;
	}
}

/* Initialise and Generate the Background Sprites */
void v_init_sprites(const u8 level) {

	for (u8 i = CELL_G; i <= CELL_G_P_V_H; i++) {
		cpct_memset(v_cells[i], 0, sizeof(v_cells[i]));
		v_generate_sprite(v_cells[i], v_spr_map[i], level);
	}
}

/* Get a pointer to an Appropriate Background Sprite using the cell value */
inline u8* v_get_sprite_p(const u8 value) {

	switch (value) {
	case FLAG_GRID:
		return v_cells[CELL_G];
		break;
	case FLAG_GRID | FLAG_POD:
		return v_cells[CELL_G_P];
		break;
	case FLAG_GRID | FLAG_V_BOLT:
		return v_cells[CELL_G_V];
		break;
	case FLAG_GRID | FLAG_H_BOLT:
		return v_cells[CELL_G_H];
		break;
	case FLAG_GRID | FLAG_V_BOLT | FLAG_H_BOLT:
		return v_cells[CELL_G_V_H];
		break;
	case FLAG_GRID | FLAG_POD | FLAG_V_BOLT:
		return v_cells[CELL_G_P_V];
		break;
	case FLAG_GRID | FLAG_POD | FLAG_H_BOLT:
		return v_cells[CELL_G_P_H];
		break;
	case FLAG_GRID | FLAG_POD | FLAG_V_BOLT | FLAG_H_BOLT:
		return v_cells[CELL_G_P_V_H];
		break;
	default:
		return v_cells[CELL_G];
	}
}

/* Draw Player Back Buffer (Surrounding Tiles) */
void v_draw_player_bb(const i8 x, const i8 y) {

	u8 *v_pos, *b_pos, *spr;
	u8 cell, bx, by;
	i16 px, py;

	cpct_memset(v_player_buf, 0, sizeof(v_player_buf));
	for (i8 j = x; j < x + PLAYER_BUF_W; j++) {
		for (i8 k = y; k < y + PLAYER_BUF_H; k++) {

			if (!u_bounds_check(j, k))
				continue;

			bx = (j - x) * GRID_P_W;
			by = (k - y) * GRID_P_H;

			b_pos = cpctm_spriteBufferPtr(v_player_buf,
				PLAYER_BUF_PW, bx, by);
			cell = g_level[u_get_xy(j, k)];
			spr = v_get_sprite_p(cell);
			cpct_drawToSpriteBuffer(PLAYER_BUF_PW, b_pos,
				GRID_P_W, GRID_P_H, spr);
		}
	}

	/* When x is -1, this is 2 - 3 for -1 explaining the error */
	px = x * GRID_P_W; 
	py = y * GRID_P_H;

	v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
	cpct_drawSprite(v_player_buf, v_pos, PLAYER_BUF_PW, PLAYER_BUF_PH);
}

/* Generate a Background Sprite */
static void v_generate_sprite(u8* addr, const u8 mask, const u8 level) {

	const u8 bg = g_game_grid_bg[level - 1];
	const u8 fg = g_game_grid_fg[level - 1];
	const u8 bt = g_game_grid_bt[level - 1];
	u8* spr;

	spr = cpctm_spriteBufferPtr(addr, CELL_BUF_PW, 0, 0);

	if (mask & FLAG_GRID)
		cpct_drawToSpriteBuffer(
			CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_bg_ts[bg]);
	if (mask & FLAG_POD)
		cpct_drawToSpriteBufferMasked(
			CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[fg]);
	if (mask & FLAG_V_BOLT)
		cpct_drawToSpriteBufferMasked(
			CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[bt + 2]);
	if (mask & FLAG_H_BOLT)
		cpct_drawToSpriteBufferMasked(
			CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[bt]);
}

/* Draw an individual Grid Cell */
static void v_draw_grid_cell(const u8 x, const u8 y) {

	u8 cell;
	u8 *spr, *v_pos;
	int px, py, idx;

	idx = u_get_xy(x, y);
	
	cell = g_level[idx];
	spr = v_get_sprite_p(cell);

	px = x * GRID_P_W;
	py = y * GRID_P_H;

	/* Draw the Cell */
	v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
	cpct_drawSprite(spr, v_pos, GRID_P_W, GRID_P_H);
}

/* Draw the Whole Grid */
void v_draw_grid(void) {

	/* For each cell in the grid */
	for (int x = 0; x < GRID_U_W; x++) {
		for (int y = 0; y < GRID_U_H; y++) {
			v_draw_grid_cell(x, y);
		}
	}
}