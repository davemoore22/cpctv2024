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

#pragma once

#include "main.h"
#include <stdlib.h>

/* Global Variables */
extern bool g_clock_on; /* Enable Global Timer */
extern clock_t g_clock; /* Realtime Clock */

/* Public Functions */
void u_wait_kp(void);
void u_wait_for_key(cpct_keyID key);
void u_wait(const u16 n);
void u_sort_hiscores(void);
u8 u_get_width(const u32 score);
u8 u_get_random(const u8 max);
char u_map_key_to_char(const cpct_keyID key);
cpct_keyID u_map_char_to_key(const char key);
void u_clock_interrupt(void);
void u_clear_input(void);
void u_reset_clock(void);
inline void u_get_delta(const dir_t dir, i8 *dx, i8 *dy);
inline u16 u_get_xy(const i16 x, const i16 y);
inline bool u_bounds_check(const i16 x, const i16 y);
inline bool u_bounds_delta_check(const i16 x, const i16 y, const i8 dx,
	const i8 dy);
inline u8 u_power_2(const u8 pow);
inline bool u_check_collide(const i8 x1, const i8 y1, const i8 x2, const i8 y2);

/* Private Functions */
static int u_qsort_compare(const void *hs1, const void *hs2);
static void u_sort_swap(score_t *h1, score_t *h2);
static void u_quicksort(score_t *arr, u8 len);

