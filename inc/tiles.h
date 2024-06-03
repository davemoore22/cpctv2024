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

/* Background Grid Sprites (6x10 pixels) are not Masked */
extern u8* const grid_bg_ts[7];
extern const u8 grid_bg_00[3 * 10];
extern const u8 grid_bg_01[3 * 10];
extern const u8 grid_bg_02[3 * 10];
extern const u8 grid_bg_03[3 * 10];
extern const u8 grid_bg_04[3 * 10];
extern const u8 grid_bg_05[3 * 10];
extern const u8 grid_bg_06[3 * 10];

/* Foreground Grid Sprites (6x10 pixels) are Masked */
extern u8* const grid_fg_ts[14];
extern const u8 grid_fg_00[2 * 3 * 10];
extern const u8 grid_fg_01[2 * 3 * 10];
extern const u8 grid_fg_02[2 * 3 * 10];
extern const u8 grid_fg_03[2 * 3 * 10];
extern const u8 grid_fg_04[2 * 3 * 10];
extern const u8 grid_fg_05[2 * 3 * 10];
extern const u8 grid_fg_06[2 * 3 * 10];
extern const u8 grid_fg_07[2 * 3 * 10];
extern const u8 grid_fg_08[2 * 3 * 10];
extern const u8 grid_fg_09[2 * 3 * 10];
extern const u8 grid_fg_10[2 * 3 * 10];
extern const u8 grid_fg_11[2 * 3 * 10];
extern const u8 grid_fg_12[2 * 3 * 10];
extern const u8 grid_fg_13[2 * 3 * 10];

/* Player Graphics */
extern const u8 player_00[2 * 5 * 20];
extern const u8 player_01[2 * 5 * 20];
extern const u8 player_02[2 * 5 * 20];
extern const u8 player_03[2 * 5 * 20];
extern const u8 player_04[2 * 5 * 20];
extern const u8 player_05[2 * 5 * 20];
extern const u8 player_06[2 * 5 * 20];
extern const u8 player_07[2 * 5 * 20];
extern const u8 player_08[2 * 5 * 20];
extern u8 *const player_ts[9];

/* GUI Graphics */
extern u8* const gui_ts[9];
extern const u8 gui_0[2 * 3 * 10];
extern const u8 gui_1[2 * 3 * 10];
extern const u8 gui_2[2 * 3 * 10];
extern const u8 gui_3[2 * 3 * 10];
extern const u8 gui_4[2 * 3 * 10];
extern const u8 gui_5[2 * 3 * 10];
extern const u8 gui_6[2 * 3 * 10];
extern const u8 gui_7[2 * 3 * 10];
extern const u8 gui_8[2 * 3 * 10];

/* Explosion Graphics */
extern u8* const explode_ts[5];
extern const u8 explode_0[2 * 3 * 10];
extern const u8 explode_1[2 * 3 * 10];
extern const u8 explode_2[2 * 3 * 10];
extern const u8 explode_3[2 * 3 * 10];
extern const u8 explode_4[2 * 3 * 10];

/* Enemies */
extern u8* const enemies_v_ts[12];
extern u8* const enemies_h_ts[12];
extern const u8 enemies_v_00[2 * 12];
extern const u8 enemies_v_00[2 * 12];
extern const u8 enemies_v_01[2 * 12];
extern const u8 enemies_v_02[2 * 12];
extern const u8 enemies_v_03[2 * 12];
extern const u8 enemies_v_04[2 * 12];
extern const u8 enemies_v_05[2 * 12];
extern const u8 enemies_v_06[2 * 12];
extern const u8 enemies_v_07[2 * 12];
extern const u8 enemies_v_08[2 * 12];
extern const u8 enemies_v_09[2 * 12];
extern const u8 enemies_v_10[2 * 12];
extern const u8 enemies_v_11[2 * 12];
extern const u8 enemies_h_00[3 * 8];
extern const u8 enemies_h_01[3 * 8];
extern const u8 enemies_h_02[3 * 8];
extern const u8 enemies_h_03[3 * 8];
extern const u8 enemies_h_04[3 * 8];
extern const u8 enemies_h_05[3 * 8];
extern const u8 enemies_h_06[3 * 8];
extern const u8 enemies_h_07[3 * 8];
extern const u8 enemies_h_08[3 * 8];
extern const u8 enemies_h_09[3 * 8];
extern const u8 enemies_h_10[3 * 8];
extern const u8 enemies_h_11[3 * 8];
extern const u8 enemies_h_12[3 * 8];
