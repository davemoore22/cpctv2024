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

/* Compressed Graphics - created with with image and compression macros */
extern const unsigned char img_transition[612];
extern const unsigned char img_titles[318];
extern const unsigned char img_victory[4433];

/* Address of the last byte of the compressed arrays (for unpacking purposes) */
#define img_transition_end (img_transition + 612 - 1)
#define img_titles_end (img_titles + 318 - 1)
#define img_victory_end (img_victory + 4433 - 1)

/* Compressed and uncompressed sizes */
#define img_transition_size_z 612
#define img_transition_size 16384
#define img_titles_size_z 318
#define img_titles_size 16384
#define img_victory_size_z   4433
#define img_victory_size     16384

/* Uncompressed Graphics */
extern const u8 img_launch[2 * 7 * 20];

