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

/* Interrupt Indexes */
extern u8 v_int_idx;
extern u8 v_pal_idx;
extern u8 v_frame_c;
extern u16 v_cycle_c;

/* Player Back Buffer */
extern u8 v_player_buf[PLAYER_BUF_PW * PLAYER_BUF_PH];

/* Public Functions */
void v_init(void);
void v_blk_scr(void);
void v_reset_pal(void);
void v_reset_pal_v(void);
void v_wait_VSYNC(u8 n);
void v_clr_scr(void);
void v_wipe_scr(bool dir);
void v_print_c(const char* str, const u8 y, const pen_t pen);
void v_print(const char* str, const u8 x, const u8 y, const pen_t pen);
void v_print_n(const i64 num, const u8 x, const u8 y, const pen_t pen);
void v_flash_brd(u8 col, u16 n);
void v_draw_logo();
void v_interrupt(void);
void v_reset_timers(void);
void v_draw_player(void);
void v_draw_enemies(void);
void v_draw_bolts(const bool all);
void v_draw_box(const dim_t *sz);
void v_init_sprites(const u8 level);
void v_draw_grid(void);
void v_draw_player_bb(const i8 x, const i8 y);
void v_draw_launch(void);
inline u8* v_get_pos(const u8 x, const u8 y);
inline u8* v_get_sprite_p(const u8 value);

/* Private Functions */
static void v_generate_sprite(u8* addr, const u8 mask, const u8 level);
static void v_draw_grid_cell(const u8 x, const u8 y);