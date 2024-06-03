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

#include "victory.h"

/* Screen Layout */
static const pos_t wd_loc = {.x = 54, .y = 4};
static const pos_t yh_loc = {.x = 54, .y = 11};
static const pos_t co_loc = {.x = 54, .y = 28};

static bool music;

/* Start a Victory Screen */
void c_scr_start(void) {

	bool kp = false;
	u8 y;

	music = g_music_sfx;
	g_music_sfx = false;
	StopMusic();

	v_clr_scr();
	v_reset_pal();

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* And Grid Graphic */
	c_draw_victory();

	/* Fixed Text for Victory Screen */
	y = wd_loc.y;
	v_print(g_strings[110], wd_loc.x, y * LINE_P_H, FONT_WHITE);
	y = y + 2;
	v_print(g_strings[111], wd_loc.x, y * LINE_P_H, FONT_WHITE);

	y = yh_loc.y;
	v_print(g_strings[112], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	y = y + 2;
	v_print(g_strings[113], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	y = y + 2;
	v_print(g_strings[114], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	y = y + 2;
	v_print(g_strings[115], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	y = y + 4;
	v_print(g_strings[116], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	y = y + 2;
	v_print(g_strings[117], yh_loc.x, y * LINE_P_H, FONT_WHITE);

	y = co_loc.y;
	v_print(g_strings[118], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	y = y + 2;
	v_print(g_strings[119], yh_loc.x, y * LINE_P_H, FONT_WHITE);

	/* No need for Colour Rasters on between screens */
	v_reset_pal_v();

	/* Continue? */
	while (!kp) {

		/* Check for a keypress */
		cpct_scanKeyboard();
		kp = cpct_isAnyKeyPressed();
	}
}

/* See if we want to continue */
bool c_can_continue(void) {

	bool proceed = false;

	while (!proceed) {

		cpct_scanKeyboard();
		if (cpct_isKeyPressed(Key_Y))
			return true;
		if (cpct_isKeyPressed(Key_N))
			return false;
	}

	return false;
}

/* Stop the Victory Screen  */
void c_scr_stop(void) {

	v_wipe_scr(true);

	g_music_sfx = music;
}

/* Draw the Victory Graphic */
static void c_draw_victory(void) {

	/* Decompresse image data from a compressed file onto the screen */
	cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_victory_end);
}