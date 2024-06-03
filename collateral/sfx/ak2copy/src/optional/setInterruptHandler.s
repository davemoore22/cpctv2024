;;-----------------------------LICENSE NOTICE------------------------------------
;;  cpct_setInterruptHandler with alternate registers
;;
;;  Copyright (C) 2020 Arnaud Bouche (@Arnaud6128)
;;
;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU Lesser General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.
;;
;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU Lesser General Public License for more details.
;;
;;  You should have received a copy of the GNU Lesser General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;-------------------------------------------------------------------------------

.module assembly

.equ firmware_RST_jp, 0x38  ;; Memory address were a jump (jp) to the firmware code is stored.
.equ GA_port_byte,    0x7F  ;; 8-bit Port of the Gate Array

;; Adapted from cpct_setInterruptHandler (CPCTelera)
;; asm_setInterruptHandler( void(*intHandler)(void) ) __z88dk_fastcall;
_asm_setInterruptHandler::
   ld (safeInterruptHandlerCall+1), hl;; [5] Place the pointer to the user code just after the call instruction
   
   ;; Modify interrupt vector to call save interrupt handler hook (code below)
   ld  a, #0xC3                            ;; [2] 0xC3 = JP instruction, that may have been removed by other functions
   di                                      ;; [1] Disable interrupts
   ld (firmware_RST_jp), a                 ;; [4] Add JP at the start of interrupt vector's code
   ld hl, #safeInterruptHandlerHook        ;; [3] HL = pointer to safe interrupt handler hook
   ld (firmware_RST_jp+1), hl              ;; [5] Place interrupt handler hook pointer after JP in the interrupt vector's code
   ei                                      ;; [1] Reenable interrupts

   ret                                     ;; [3] Return

;;
;; Interrupt Handler Safe Wrapper Code. This is the code that
;; will be called at the start of the interrupt, and this code 
;; will call user defined function, after saving registers. It 
;; also returns using reti for user comfortability.
;;
safeInterruptHandlerHook::
   di          ;; [1] Disable interrupts
  
   push af     ;; [4] Save all standard registers on the stack
   push bc     ;; [4]
   push de     ;; [4]
   push hl     ;; [4]
   push ix     ;; [5]
   push iy     ;; [5]
   
   exx         ;; [1] Switch to alternate registers
   ex af,af'   ;; [1] |
   
   push af     ;; [4] Save all alternate registers
   push bc     ;; [4]
   push de     ;; [4]
   push hl     ;; [4]
   
safeInterruptHandlerCall:   
   call #0000  ;; [5] Call Interrupt Handler

   pop  hl     ;; [3] Restore all alternate registers
   pop  bc     ;; [3]
   pop  de     ;; [3]
   pop  af     ;; [3]
   
   exx         ;; [1] Switch to standard registers
   ex af,af'   ;; [1] |
   
   pop  iy     ;; [5] Restore all standard registers
   pop  ix     ;; [5] 
   pop  hl     ;; [3]
   pop  de     ;; [3]
   pop  bc     ;; [3]
   pop  af     ;; [3]
   
   ei          ;; [1] Reenable interrupts
   reti        ;; [3] Return to main program