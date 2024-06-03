
/* Private Functions */
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

/* Game Engine Global Variables */
extern u8 g_int_idx;
extern u8 g_frame_c;
extern bool g_music_sfx;
extern score_t g_hiscores[10];
extern cpct_keyID g_controls[9];
extern enemy_t g_enemies[4];
extern bolt_t g_bolts[4];
extern u8 g_bolt_count;
extern u8 g_level[25 * 17];
extern player_t g_player;
extern u8 g_pods_left;
extern u8 g_current_level;
extern u8 g_current_round;
extern u8 g_lives_left;
extern u32 g_current_score;

/* Public Functions */
void g_setup(void);
void g_start(void);
void g_stop(void);

/* Private Functions */
static void g_load_level(void);
static bool g_play_level(void);
static void g_reset_enemies(void);
static bool g_move_player(const dir_t new_dir, bool* is_rot);
static bool g_move_enemies(void);
static bool g_move_bolts(void);
static bool g_eat_pod(void);
static void g_stage_clear(void);
static void g_pause(void);
static bool g_check_collision(const dir_t enemy);
static bool g_check_launch_bolts(void);
static bool g_check_input_movement(bool *moved, bool *rotated, bool* eaten);
static bool g_check_input_meta(bool* pause, bool* quit, bool *skip,
	bool *victory);
static void g_draw_HUD(void);
static void g_draw_stage_clear(void);
static void g_draw_pause(void);
static void g_draw_score(void);
static void g_reset_player(void);
static void g_fire_bolt(const dir_t dir);
static void g_interrupt(void);
static void g_reset_timers(void);
static bool g_check_death(void);
static void g_explode_player(void);
