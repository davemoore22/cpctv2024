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

#include "between.h"

/* Screen Layout */
static const pos_t pg_loc = {.x = 24, .y = 4};
static const pos_t gr_loc = {.x = 0, .y = 28};
static const pos_t go_loc = {.x = 0, .y = 11};
static const pos_t wd_loc = {.x = 0, .y = 11};

/* Start a Transition "Between" Screen */
void b_scr_start(const screen_t type) {

	u16 duration;
	bool kp = false;

	v_clr_scr();
	v_reset_pal();


	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Make sure the Timer Interrupt is off */
	g_clock_on = false;

	if (type == SCR_GET_READY) {

		/* And Grid Graphic */
		b_draw_transition();

		/* Fixed Text for Get Ready Screen */
		v_print(g_strings[70], pg_loc.x, pg_loc.y * LINE_P_H,
			FONT_BLUE);
		v_print(g_strings[71], pg_loc.x + 18, pg_loc.y * LINE_P_H,
			FONT_BLUE);
		v_print_n(g_current_round, pg_loc.x + 12, pg_loc.y * LINE_P_H, FONT_BLUE);
		v_print_n(g_current_level, pg_loc.x + 29, pg_loc.y * LINE_P_H, FONT_BLUE);
		v_print_c(g_strings[72], gr_loc.y * LINE_P_H, FONT_RED);

	} else if (type == SCR_GAME_OVER) {

		/* And Grid Graphic */
		b_draw_transition();

		/* Fixed Text for Game Over Screen */
		v_print_c(g_strings[75], pg_loc.y * LINE_P_H, FONT_BLUE);
		v_print_c(g_strings[73], gr_loc.y * LINE_P_H, FONT_RED);
	}

	/* No need for Colour Rasters on between screens */
	v_reset_pal();
	/* Set up Clock Interrupt */
	g_clock_on = false;
	u_reset_clock();
	cpct_setInterruptHandler(u_clock_interrupt);

	/* Start Clock */
	duration = type == SCR_GET_READY ? 5 : 10;
	g_clock_on = true;

	/* Display for a number of seconds or until a keypress */
	while ((!kp) && (g_clock.s < duration)) {

		/* Check for a keypress */
		cpct_scanKeyboard();
		kp = cpct_isAnyKeyPressed();
	}

	/* Stop Clock */
	g_clock_on = false;
	cpct_removeInterruptHandler();
	u_reset_clock();
}

/* Stop the Transition "Between" Screen */
void b_scr_stop(void) {

	v_wipe_scr(true);
}

/* Draw the Grid Graphic */
static void b_draw_transition(void) {

	/* Decompresse image data from a compressed file onto the screen */
	cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_transition_end);
}