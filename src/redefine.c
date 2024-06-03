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

#include "redefine.h"

/* Screen Layout */
static const pos_t title_loc = {.x = 1, .y = 8};
static const pos_t redefine_loc = {.x = 18, .y = 15};
static const pos_t instruct_loc = {.x = 1, .y = 30};

/* Temporary Buffer for Redefinding Controls */
cpct_keyID controls[9];

/* Start Redefine Screen */
void r_start(void) {

	bool finished = false, kp = false;
	char ascii;
	cpct_keyID key;
	control_t current = KEY_UP;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Get the Controls */
	for (u8 i = 0; i < 9; i++)
		controls[i] = g_controls[i];

	/* Draw the Screen */
	v_draw_logo();
	h_draw_redefine(current);
	v_reset_pal();

	v_reset_timers();
	cpct_waitVSYNC();
	cpct_setInterruptHandler(v_interrupt);

	/* Wait for a Keypress */
	while (current <= KEY_PAUSE) {

		/* Work out what the key is */
		cpct_scanKeyboard_f();
		ascii = cpct_getKeypressedAsASCII();

		/* A to Z */
		if ((ascii != 0) && (ascii >= 65) && (ascii <= 122)) {

			if (ascii >= 'a' && ascii <= 'z')
				ascii = ascii - 32;

			key = u_map_char_to_key(ascii);
		} else {

			/* Cursor Keys */
			if (cpct_isKeyPressed(Key_Esc))
				return;	
			else if (cpct_isKeyPressed(Key_CursorLeft))
				key = Key_CursorLeft;
			else if (cpct_isKeyPressed(Key_CursorRight))
				key = Key_CursorRight;
			else if (cpct_isKeyPressed(Key_CursorUp))
				key = Key_CursorUp;
			else if (cpct_isKeyPressed(Key_CursorDown))
				key = Key_CursorDown;
			else
				key = controls[0];
		}

		if (!r_is_control_used(key)) {
			controls[current] = key;
			++current;
			cpct_waitVSYNC();
			h_draw_redefine(current);
			u_wait(1000);
		}
	}

	u_wait(1000);

	for (u8 i = 0; i < 9; i++)
		g_controls[i] = controls[i];
}

/* Stop Redefine Screen */
void r_stop(void) {

	v_wipe_scr(true);
	v_clr_scr();
	cpct_removeInterruptHandler();
	v_reset_timers();
}

/* Draw Redefine Keys */
static void h_draw_redefine(const control_t current) {

	u8 y = redefine_loc.y * LINE_P_H;
	const char *str;
	char key[2] = "", ascii;
	pen_t col;

	/* Draw the Redefine Controls */
	v_print_c(g_strings[50], title_loc.y * LINE_P_H, FONT_RED);

	for (u8 i = KEY_UP; i < JOY_UP; i++) {

		str = g_strings[i + 51];
		col = i == current ? FONT_WHITE : FONT_BLUE;
		v_print(str, redefine_loc.x, y, col);
		v_print("     ", redefine_loc.x + 35, y, col);

		if (controls[i] == Key_CursorLeft) {
			v_print(g_strings[64], redefine_loc.x + 35, y, col);
		} else if (controls[i] == Key_CursorRight) {
			v_print(g_strings[65], redefine_loc.x + 35, y, col);
		} else if (controls[i] == Key_CursorUp) {
			v_print(g_strings[62], redefine_loc.x + 35, y, col);
		} else if (controls[i] == Key_CursorDown) {
			v_print(g_strings[63], redefine_loc.x + 35, y, col);
		} else {
			ascii = u_map_key_to_char(controls[i]);
			key[0] = ascii;
			key[1] = '\0';
			v_print(key, redefine_loc.x + 43, y, col);
		}

		y += LINE_P_H * 2;
	}

	str = g_strings[current + 56];
	v_print_c(str, instruct_loc.y * LINE_P_H, FONT_RED);
	str = g_strings[66];
	v_print_c(str, (instruct_loc.y + 2) * LINE_P_H, FONT_RED);
}

/* Is a Control already used? */
static bool r_is_control_used(const cpct_keyID control) {

	for (control_t i = KEY_UP; i < JOY_UP; i++) {
		if (controls[i] == control)
			return true;
	}

	return false;
}
