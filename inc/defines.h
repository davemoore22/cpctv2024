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

#include <cpctelera.h>
#include <stdbool.h>
#include <string.h>
#include <types.h>

/* Defines */

/* C-standard used for Compilation */
#define C99
#undef C11

/* For Image Decompression */
#define VIDEO_MEM_END ((void *)0xffff)

/* Debugs for Conditional Compilation */
#undef DEBUG_SKIP_TITLE
#undef DEBUG_SKIP_BETWEEN
#undef DEBUG_INVULNERABLE

/* Size of Character Fonts in Bytes/Lines  */
#define LINE_P_W 2
#define LINE_P_H 6

/* Size of Grid Units */
#define GRID_U_W 25
#define GRID_U_H 17
#define GRID_P_W 3 /* Bytes/Lines per Unit */
#define GRID_P_H 10

/* Screen Locations */
#define GRID_LOC_X 1 * LINE_P_W
#define GRID_LOC_Y 3 * LINE_P_H

/* Size of Player Back Buffers in Grid Units */
#define PLAYER_BUF_W 3
#define PLAYER_BUF_H 3
#define PLAYER_BUF_PW PLAYER_BUF_W *GRID_P_W
#define PLAYER_BUF_PH PLAYER_BUF_H *GRID_P_H
#define CELL_BUF_W 1
#define CELL_BUF_H 1
#define CELL_BUF_PW CELL_BUF_W *GRID_P_W
#define CELL_BUF_PH CELL_BUF_H *GRID_P_H

/* Grid Background Flags  */
#define FLAG_GRID 1
#define FLAG_POD 2
#define FLAG_V_BOLT 4
#define FLAG_H_BOLT 8

/* Timings */
#define FC_MAX 50
#define FC_EXPLODE 15
#define FC_TICK 5

/* Pixel Adjustments */
#define ADJ_PLAYER_PX -1
#define ADJ_PLAYER_PY -4

/* Tile Sizes (Bytes) */
#define SZ_PLAYER_PX 5
#define SZ_PLAYER_PY 20
#define SZ_GRID_PX 3
#define SZ_GRID_PY 10


/* Hiscore object */
typedef struct {
	char initials[4]; /* scorer initials (user-entered) */
	u32 score;	  /* score */
	u8 width;	  /* width in digits of score as string */
} score_t;

/* Screen Coordinate */
typedef struct {
	u8 x; /* x coordinate (0 is top-left) */
	u8 y; /* y coordinate (0 is top-left) */
} pos_t;

/* Rectangle/Square */
typedef struct {
	u8 w; /* width (in character cells) */
	u8 h; /* height(in character cells) */
} dim_t;

/* Font Types */
typedef enum {
	FONT_RED = 0,
	FONT_BLUE = 1,
	FONT_WHITE = 2
} pen_t;

/* Controls */
typedef enum {
	KEY_UP = 0,
	KEY_DOWN = 1,
	KEY_LEFT = 2,
	KEY_RIGHT = 3,
	KEY_PAUSE = 4,
	JOY_UP = 5,
	JOY_DOWN = 6,
	JOY_LEFT = 7,
	JOY_RIGHT = 8
} control_t;

/* Between Screen type */
typedef enum {
	SCR_GET_READY = 0,
	SCR_GAME_OVER = 1
} screen_t;

/* Cardinal direction */
typedef enum {
	DIR_NONE = -1,
	DIR_NORTH = 0,
	DIR_EAST = 1,
	DIR_SOUTH = 2,
	DIR_WEST = 3
} dir_t;

/* Indexes for Calculated Sprites Buffer */
typedef enum {
	CELL_G = 0,
	CELL_G_P = 1,
	CELL_G_V = 2,
	CELL_G_H = 3,
	CELL_G_V_H = 4,
	CELL_G_P_V = 5,
	CELL_G_P_H = 6,
	CELL_G_P_V_H = 7
} cell_t;

/* Realtime clock */
typedef struct {
	u16 ms; /* Milliseconds*/
	u16 s;	/* Seconds */
} clock_t;

/* Player Spaceship  */
typedef struct {
	u8 x, y;      /* Current Location (Grid) */
	u8 px, py;    /* Previous Location (Grid) */
	u8 sx, sy;    /* Current Location (Screen/Bytes) */
	dir_t dir;    /* Current Direction */
	bool boost;   /* Under Boost */
	bool explode; /* Exploding */
	u8 explode_f; /* Explosion Frame Number */
} player_t;

/* Enemy */
typedef struct {
	dir_t side;  /* Enemy Type */
	u8 loc;	     /* Location in offset from grid top/left */
	u8 prev;     /* Old Location */
	i8 dx;	     /* Deltas */
	i8 dy;
	u8 max;	     /* Max Position on Axis */
	u8 min;	     /* Min Position on Axis */
	bool fired;  /* Has fired a bolt */
} enemy_t;

/* Bolt */
typedef struct {
	dir_t side;
	u8 x, y;
	u8 px, py;
	bool active;
	i8 dx;
	i8 dy;
	bool dp;
	u8 dp_x, dp_y;
	bool dc;
	u8 dc_x, dc_y;
} bolt_t;

/* GUI Parts */
typedef enum {
	GUI_NORTH_WEST = 1,
	GUI_NORTH = 2,
	GUI_NORTH_EAST = 3,
	GUI_WEST = 4,
	GUI_EAST = 5,
	GUI_SOUTH_WEST = 6,
	GUI_SOUTH = 7,
	GUI_SOUTH_EAST = 8
} gui_t;

/* Video Buffer Source */
typedef enum {
	BUF_VMEM = 0,
	BUF_GRID = 1,
	BUF_CELL = 2
} source_t;