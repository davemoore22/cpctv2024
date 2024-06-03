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

#include "titles.h"

/* Global Variables */
bool t_in_titles;

/* Interrupt Indexes */
static u8 int_idx = 0;
static u8 pal_idx = 0;
static u16 frame_c = 0;

/* Screen Layout */
static const pos_t text_loc = {.x = 1, .y = 8};
static const pos_t blurb_loc = {.x = 1, .y = 25};
static const pos_t menu_loc = {.x = 14, .y = 12};
static const u8 menu_key_x = 21;
static const u8 menu_name_x = 26;

/* Start the Title Screen */
cpct_keyID t_start(bool skip) {

	bool quit = false;
	u16 count = 0;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	t_in_titles = true;

	/* Start Music */
	PlayMusic(0);

	/* Display the Title Screen */
	if (!skip) {

		v_draw_logo();
		t_draw_titles();
		t_draw_menu();
		v_reset_pal();

		/* Setup Interrupts */
		v_reset_timers();
		cpct_setInterruptHandler(v_interrupt);

		/*
		 * Run the Title Menu until the Quit Key is pressed, or an
		 * option is chosen!
		 */
		while (1) {
			++count;

			/* Check for a Key Press at regular intervals */
			if (count % 200 == 0) {
				if (cpct_isKeyPressed(Key_0)) {

					/* If 0 is pressed, we can quit game */
					return Key_0;

				} else if (cpct_isKeyPressed(Key_1)) {

					/* Redefine Keys */
					return Key_1;

				} else if (cpct_isKeyPressed(Key_2)) {

					/* Enable/Disable Music and SFX  */
					g_music_sfx = !g_music_sfx;
					if (!g_music_sfx)
						StopMusic();

				} else if (cpct_isKeyPressed(Key_3)) {

					/* Display hiscores */
					return Key_3;

				} else if (cpct_isKeyPressed(Key_4)) {

					/* Display help */
					return Key_4;

				} else if (cpct_isKeyPressed(Key_9)) {

					/* Start a new game */
					return Key_9;
				}
			}

			if (count > 30002)
				count = 0;
		}
	} else {

		/* Just skip directly to the game */
		return Key_9;
	}
}

/* Stop the Title Screen */
void t_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
	cpct_removeInterruptHandler();
	StopMusic();
	t_in_titles = false;
	v_reset_timers();
}

/* Draw Titles */
static void t_draw_titles(void) {

	u8 y = LINE_P_H * text_loc.y;
	v_print_c(g_strings[0], y, FONT_RED);
	y = y + (LINE_P_H) + 2;
	v_print_c(g_strings[1], y, FONT_WHITE);
	y = LINE_P_H * blurb_loc.y;
	v_print_c(g_strings[2], y, FONT_RED);
	y = y + (LINE_P_H) + 2;
	v_print_c(g_strings[3], y, FONT_WHITE);
	y = y + (LINE_P_H) + 2;
	v_print_c(g_strings[4], y, FONT_WHITE);
	y = LINE_P_H * 30;
	v_print_c(g_strings[5], y, FONT_RED);
	y = y + (LINE_P_H) + 2;
	v_print_c(g_strings[6], y, FONT_WHITE);
}

/* Draw Menu */
static void t_draw_menu(void) {

	int ly = menu_loc.y;
	const u8 line = LINE_P_H;
	u8 text_y = LINE_P_H * menu_loc.y;

	t_draw_opt(g_strings[10], g_strings[16], ly);
	t_draw_opt(g_strings[11], g_strings[17], ly += 2);
	t_draw_opt(g_strings[12], g_strings[18], ly += 2);
	t_draw_opt(g_strings[13], g_strings[19], ly += 2);
	t_draw_opt(g_strings[14], g_strings[20], ly += 2);
	t_draw_opt(g_strings[15], g_strings[21], ly += 2);
}

/* Draw a Menu Option, optionally with Icons */
static void t_draw_opt(const char *key, const char *str, const u8 y) {

	/* These are also optionally centered horizontally */
	v_print(key, menu_key_x, y * LINE_P_H, FONT_RED);
	v_print(str, menu_name_x, y * LINE_P_H, FONT_BLUE);
}