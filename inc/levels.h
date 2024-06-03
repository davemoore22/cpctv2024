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

/* Level Data */
extern unsigned char *const g_game_grids[8];
extern const unsigned char g_game_grid_1[54];
extern const unsigned char g_game_grid_2[54];
extern const unsigned char g_game_grid_3[54];
extern const unsigned char g_game_grid_5[54];
extern const unsigned char g_game_grid_7[54];

/* Level Colour Config */
extern const u8 g_game_grid_fg[8];
extern const u8 g_game_grid_bg[8];
extern const u8 g_game_grid_bt[8];
