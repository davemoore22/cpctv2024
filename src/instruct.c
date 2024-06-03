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

#include "instruct.h"

/* Screen Layout */
static const pos_t title_loc = {.x = 1, .y = 8};
static const pos_t text_loc = {.x = 1, .y = 11};
static const pos_t key_loc = {.x = 1, .y = 32};

/* Start Instructions Screen */
void i_start(void) {

	bool kp = false;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Draw the Screen */
	v_draw_logo();
	i_draw_instructions();
	v_reset_pal();

	v_reset_timers();
	cpct_waitVSYNC();
	cpct_setInterruptHandler(v_interrupt);

	/* Wait for a Keypress */
	while (!kp)
		kp = cpct_isAnyKeyPressed();
}

/* Stop Instructions Screen */
void i_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
	cpct_removeInterruptHandler();
	v_reset_timers();
}

/* Draw Instructions */
static void i_draw_instructions() {

	v_print_c(g_strings[48], title_loc.y * LINE_P_H, FONT_RED);

	for (u8 y = 0; y < 14; y++)
		v_print_c(g_strings[y + 30],
			((y + text_loc.y) * LINE_P_H) + (y * 2), FONT_BLUE);

	v_print_c(g_strings[49], key_loc.y * LINE_P_H, FONT_RED);
}
