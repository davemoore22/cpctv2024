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

#include "main.h"

/* Main Application Entry Point */
void main(void) {

	bool quit = false;
	cpct_keyID key;

	/* Initial Game Settings */
	g_setup();

	/* Initialise Display */
	v_init();

	/* Initialise Music */
	InitSound();

	/* Start Title Screen */
#ifdef DEBUG_SKIP_TITLE
	key = t_start(true);
#else
	key = t_start(false);
#endif

	while (!quit) {
		quit = key == Key_0;

		if (key == Key_1) {

			/* Redefine Keys  */
			t_stop();
			r_start();
			r_stop();

			/* Go back to Title Screen and repeat */
			key = t_start(false);
		} else if (key == Key_3) {

			/* Display Instructions */
			t_stop();
			h_start();
			h_stop();

			/* Go back to Title Screen and repeat */
			key = t_start(false);
		} else if (key == Key_4) {

			/* Display Instructions */
			t_stop();
			i_start();
			i_stop();

			/* Go back to Title Screen and repeat */
			key = t_start(false);
		} else if (key == Key_9) {

			/* Start Game */
			t_stop();
			g_start();
			g_stop();

			/* Go back to Title Screen and repeat */
			key = t_start(false);
		}
	};

	/* And Exit */
	if (quit)
		t_stop();
}