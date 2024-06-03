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

#include "utilities.h"

/* Enable Global Timer */
bool g_clock_on;

/* Realtime Clock */
clock_t g_clock = {.ms = 0, .s = 0};

/* Wait for a keypress (interruprts will be disabled briefly) */
void u_wait_kp(void) {

	bool kp = false;
	while (!kp) {
		cpct_scanKeyboard();
		kp = cpct_isAnyKeyPressed();
	}
}

/* pow function */
inline u8 u_power_2(const u8 pow) {

	u8 result = 1;

	for (u8 i = 0; i < pow; i++)
		result *= 2;

	return result;
}


/* Wait for a Key */
void u_wait_for_key(cpct_keyID key) {

	do
		cpct_scanKeyboard_f();
	while(!cpct_isKeyPressed(key));

	do
		cpct_scanKeyboard_f();
	while(cpct_isKeyPressed(key));
}

/* Wait for a certain number of cycles in a do nothing loop */
void u_wait(const u16 n) {

	for (u16 i = 0; i < n; i++)
		__asm__("NOP");
}

/* Get the Width (in digits, i.e. characters) of a Number */
u8 u_get_width(const u32 score) {

	u8 width = 0;
	u32 num = score;

	do {
		num /= 10;
		++width;
	} while (num != 0);

	return width;
}

/* Get a random value from 0 to max - 1 */
u8 u_get_random(const u8 max) {

	bool finished = false;
	u8 num = max;

	while (!finished) {
		num = cpct_getRandom_lcg_u8(cpct_getRandom_glfsr16_u8());
		finished = num < max;
	}

	return num;
}

/* Get array position from x/y */
inline u16 u_get_xy(const i16 x, const i16 y) {

	return x + (y * GRID_U_W);
}

/* Map a character to keycode */
cpct_keyID u_map_char_to_key(const char key) {

	switch (key) {
	case 'A':
		return Key_A;
	case 'B':
		return Key_B;
	case 'C':
		return Key_C;
	case 'D':
		return Key_D;
	case 'E':
		return Key_E;
	case 'F':
		return Key_F;
	case 'G':
		return Key_G;
	case 'H':
		return Key_H;
	case 'I':
		return Key_I;
	case 'J':
		return Key_J;
	case 'K':
		return Key_K;
	case 'L':
		return Key_L;
	case 'M':
		return Key_M;
	case 'N':
		return Key_N;
	case 'O':
		return Key_O;
	case 'P':
		return Key_P;
	case 'Q':
		return Key_Q;
	case 'R':
		return Key_R;
	case 'S':
		return Key_S;
	case 'T':
		return Key_T;
	case 'U':
		return Key_U;
	case 'V':
		return Key_V;
	case 'W':
		return Key_W;
	case 'X':
		return Key_X;
	case 'Y':
		return Key_Y;
	case 'Z':
		return Key_Z;
	default:
		return Key_Space;
	}
}

/* Map a keycode to Uppercase ASCII character */
char u_map_key_to_char(const cpct_keyID key) {

	switch (key) {
	case Key_A:
		return 'A';
	case Key_B:
		return 'B';
	case Key_C:
		return 'C';
	case Key_D:
		return 'D';
	case Key_E:
		return 'E';
	case Key_F:
		return 'F';
	case Key_G:
		return 'G';
	case Key_H:
		return 'H';
	case Key_I:
		return 'I';
	case Key_J:
		return 'J';
	case Key_K:
		return 'K';
	case Key_L:
		return 'L';
	case Key_M:
		return 'M';
	case Key_N:
		return 'N';
	case Key_O:
		return 'O';
	case Key_P:
		return 'P';
	case Key_Q:
		return 'Q';
	case Key_R:
		return 'R';
	case Key_S:
		return 'S';
	case Key_T:
		return 'T';
	case Key_U:
		return 'U';
	case Key_V:
		return 'V';
	case Key_W:
		return 'W';
	case Key_X:
		return 'X';
	case Key_Y:
		return 'Y';
	case Key_Z:
		return 'Z';
	default:
		return ' ';
	}
}

/* Get a delta for a cardinal direction */
inline void u_get_delta(const dir_t dir, i8 *dx, i8 *dy) {

	const static i8 offsets[4][2] = {{0, -1}, {1, 0}, {0, 1}, {-1, 0}};

	*dx = (offsets[(int)dir][0]);
	*dy = (offsets[(int)dir][1]);

	return;
}

/* Check if applying a detta to a coordinate is out of bounds */
inline bool u_bounds_delta_check(const i16 x, const i16 y, const i8 dx,
	const i8 dy) {

	if (x + dx >= GRID_U_W)
		return false;
	if (x + dx < 0)
		return false;
	if (y + dy >= GRID_U_H)
		return false;
	if (y + dy < 0)
		return false;

	return true;
}

/* Check if a coordinate is out of bounds */
inline bool u_bounds_check(const i16 x, const i16 y) {

	if (x < 0)
		return false;
	if (x >= GRID_U_W)
		return false;
	if (y >= GRID_U_H)
		return false;
	if (y < 0)
		return false;

	return true;
}

/* Clear Input Queue */
void u_clear_input(void) {

	cpct_memset(cpct_keyboardStatusBuffer, 0xff,
		sizeof(cpct_keyboardStatusBuffer));
}

/* Interrupt function used by Realtime Clock */
void u_clock_interrupt(void) {

	static u8 count = 0;

	/* Skip if the Realtime Clock is not enabled */
	if (g_clock_on) {

		/*
		 * On a CPC, interrupts are called every 1/300 of a second,
		 * therefore we throttle this function down to only do a tick
		 * every 1/50 of a second (20 microseconds)
		 */
		count = ++count % 6;
		if (count == 5) {
			g_clock.ms += 20;
			if (g_clock.ms == 1000) {
				++g_clock.s;
				g_clock.ms = 0;
			}
		}

		/*
		 * Note that this will cause an error once g_timer_s > 65535,
		 * or just over 18 hours; for efficiency purposes we do not
		 * check for this overlow!
		 */
	}
}

/* Reset Clock */
void u_reset_clock(void) {
	
	g_clock.ms = g_clock.s = 0;
}

/* Collision Detection */
inline bool u_check_collide(const i8 x1, const i8 y1, const i8 x2,
	const i8 y2) {

	return ((x1 == x2) && (y1 == y2));
}

/* Sort the Hiscore table (uses C11's qsort if available) */
void u_sort_hiscores(void) {

#ifdef C11
	u8 size = sizeof(g_hiscores) / (sizeof *g_hiscores);
	qsort(g_hiscores, size, sizeof(score_t), _util_qsort_compare);
#else
	u8 n = sizeof(g_hiscores) / sizeof(g_hiscores[0]);
	u_quicksort(g_hiscores, n);
#endif
}

/* QSort Implementation for Hi-Scores (C99 only) */
static void u_quicksort(score_t *arr, u8 len) {

	u32 pivot;
	u8 i, j;
	score_t temp;

	if (len < 2)
		return;

	pivot = arr[len / 2].score;

	for (i = 0, j = len - 1;; i++, j--) {

		while (arr[i].score < pivot)
			i++;
		while (arr[j].score > pivot)
			j--;

		if (i >= j)
			break;

		temp.score = arr[i].score;
		temp.width = arr[i].width;
		strcpy(temp.initials, arr[i].initials);
		arr[i].score = arr[j].score;
		arr[i].width = arr[j].width;
		strcpy(arr[i].initials, arr[j].initials);
		arr[j].score = temp.score;
		arr[j].width = temp.width;
		strcpy(arr[j].initials, temp.initials);
	}

	u_quicksort(arr, i);
	u_quicksort(arr + i, len - i);
}

/* QSort Swap for Hi-Scores (C99 only) */
static void u_sort_swap(score_t *h1, score_t *h2) {

	void *temp = h1;
	h1 = h2;
	h2 = temp;
}

/* QSort Comparitor for Hi-Scores (>= C11 only) */
static int u_qsort_compare(const void *h1, const void *h2) {

#ifdef C11
	const score_t *p1 = (score_t *)h1;
	const score_t *p2 = (score_t *)h2;

	if (p1->score < p2->score)
		return -1;
	else if (p1->score > p2->score)
		return +1;
	else
		return 0;
#else
	/* Only here to prevent compiler warnings */
	h1 = h1;
	h2 = h2;

	return 0;
#endif
}