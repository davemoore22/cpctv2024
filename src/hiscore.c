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

#include "hiscore.h"

/* Screen Layout */
static const pos_t title_loc = {.x = 1, .y = 8};
static const pos_t scores_loc = {.x = 18, .y = 11};
static const pos_t key_loc = {.x = 1, .y = 32};

static const pos_t cg_loc = {.x = 0, .y = 11};
static const pos_t ei_loc = {.x = 0, .y = 19};

/* Start Hiscores Screen */
void h_start(void) {

	bool kp = false;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Draw the Screen */
	v_draw_logo();
	h_draw_hiscores();
	v_reset_pal();

	v_reset_timers();
	cpct_waitVSYNC();
	cpct_setInterruptHandler(v_interrupt);

	/* Wait for a Keypress */
	while (!kp)
		kp = cpct_isAnyKeyPressed();
}

/* Enter a new Hiscore */
void h_enter_start(void) {

	u8 y = cg_loc.y * LINE_P_H;
	char name[4] = "", key;
	u8 len = 0;
	u16 count = 0;

	/* Check if we have got a high score from the game that just ended */
	if (g_current_score > g_hiscores[0].score) {

		/* Clear the Screen */
		v_blk_scr();
		v_clr_scr();

		cpct_waitVSYNC();

		v_print_c(g_strings[100], y, FONT_RED);
		v_print_c(g_strings[101], y += (LINE_P_H * 3), FONT_BLUE);
		v_print_c(g_strings[102], y += (LINE_P_H * 2), FONT_BLUE);
		v_reset_pal();

		/* Handle Initial Input */
		y = ei_loc.y * LINE_P_H;
		while (len <= 2) {

			if (count % 200 == 0) {

				cpct_waitVSYNC();
				v_print(g_strings[103], 36, y, FONT_WHITE);
				v_print(name, 36, y, FONT_WHITE);

				/* Check for Keypresses */
				cpct_scanKeyboard();

				/* Handle Deletes */
				if (cpct_isKeyPressed(Key_Del) && (len > 0)) {
					--len;
					name[len] = '\0';
				} else {
					key = cpct_getKeypressedAsASCII();
					if ((key != 0) && (key >= 65) &&
						(key <= 122)) {

						name[len] = key;
						++len;
					}
				}
			}

			++count;

			if (count > 10000)
				count = 0;
		}

		/*
		 * Add the Score to the Hi-Score table if we need to; note that
		 * after inserting, the table will be resorted in ascending
		 * order
		 */
		name[3] = '\0';
		if (g_current_score > g_hiscores[0].score) {
			h_insert(name, g_current_score, 0);
			u_sort_hiscores();
		}
	}

	v_wipe_scr(true);
}

/* Stop Hiscores Screen */
void h_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
	cpct_removeInterruptHandler();
	v_reset_timers();
}

/* Insert a score into the highscore table */
void h_insert(const char *initials, const u32 score, const u8 pos) {

	g_hiscores[pos].score = score;
	strcpy(g_hiscores[pos].initials, initials);
	g_hiscores[pos].width = u_get_width(score);
}

/* Check if a score is a high score */
static bool h_check(void) {

	u32 min = g_hiscores[0].score;

	/* Find minimum score already in table */
	for (u8 i = 1; i < 10; i++) {
		if (g_hiscores[i].score < min)
			min = g_hiscores[i].score;
	}

	return g_current_score > min;
}

/* Draw Hiscore Table */
static void h_draw_hiscores(void) {

	u8 y = scores_loc.y * LINE_P_H;
	char *str;

	/* Draw each line of the Hi Score table */
	v_print_c(g_strings[29], title_loc.y * LINE_P_H, FONT_RED);

	/* Remember this is always sorted in ascending order */
	for (int i = 9; i >= 0; i--) {

		/* Display each line of the Hi-Score table */
		str = &g_hiscores[i].initials[0];
		v_print(g_hiscores[i].initials, scores_loc.x, y, FONT_BLUE);
		v_print(g_strings[27], scores_loc.x + 7, y, FONT_BLUE);
		v_print(g_strings[28], scores_loc.x + 23, y, FONT_BLUE);
		v_print_n(g_hiscores[i].score,
			(scores_loc.x + 43) - (g_hiscores[i].width * 2), y,
			FONT_BLUE);
		y += (LINE_P_H * 2);
	}

	v_print_c(g_strings[49], key_loc.y * LINE_P_H, FONT_RED);
}