ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 ;;-----------------------------LICENSE NOTICE------------------------------------
                              2 ;;  cpct_setInterruptHandler with alternate registers
                              3 ;;
                              4 ;;  Copyright (C) 2020 Arnaud Bouche (@Arnaud6128)
                              5 ;;
                              6 ;;  This program is free software: you can redistribute it and/or modify
                              7 ;;  it under the terms of the GNU Lesser General Public License as published by
                              8 ;;  the Free Software Foundation, either version 3 of the License, or
                              9 ;;  (at your option) any later version.
                             10 ;;
                             11 ;;  This program is distributed in the hope that it will be useful,
                             12 ;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
                             13 ;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
                             14 ;;  GNU Lesser General Public License for more details.
                             15 ;;
                             16 ;;  You should have received a copy of the GNU Lesser General Public License
                             17 ;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
                             18 ;;-------------------------------------------------------------------------------
                             19 
                             20 .module assembly
                             21 
                     0038    22 .equ firmware_RST_jp, 0x38  ;; Memory address were a jump (jp) to the firmware code is stored.
                     007F    23 .equ GA_port_byte,    0x7F  ;; 8-bit Port of the Gate Array
                             24 
                             25 ;; Adapted from cpct_setInterruptHandler (CPCTelera)
                             26 ;; asm_setInterruptHandler( void(*intHandler)(void) ) __z88dk_fastcall;
   4DB8                      27 _asm_setInterruptHandler::
   4DB8 22 D9 4D      [16]   28    ld (safeInterruptHandlerCall+1), hl;; [5] Place the pointer to the user code just after the call instruction
                             29    
                             30    ;; Modify interrupt vector to call save interrupt handler hook (code below)
   4DBB 3E C3         [ 7]   31    ld  a, #0xC3                            ;; [2] 0xC3 = JP instruction, that may have been removed by other functions
   4DBD F3            [ 4]   32    di                                      ;; [1] Disable interrupts
   4DBE 32 38 00      [13]   33    ld (firmware_RST_jp), a                 ;; [4] Add JP at the start of interrupt vector's code
   4DC1 21 C9 4D      [10]   34    ld hl, #safeInterruptHandlerHook        ;; [3] HL = pointer to safe interrupt handler hook
   4DC4 22 39 00      [16]   35    ld (firmware_RST_jp+1), hl              ;; [5] Place interrupt handler hook pointer after JP in the interrupt vector's code
   4DC7 FB            [ 4]   36    ei                                      ;; [1] Reenable interrupts
                             37 
   4DC8 C9            [10]   38    ret                                     ;; [3] Return
                             39 
                             40 ;;
                             41 ;; Interrupt Handler Safe Wrapper Code. This is the code that
                             42 ;; will be called at the start of the interrupt, and this code 
                             43 ;; will call user defined function, after saving registers. It 
                             44 ;; also returns using reti for user comfortability.
                             45 ;;
   4DC9                      46 safeInterruptHandlerHook::
   4DC9 F3            [ 4]   47    di          ;; [1] Disable interrupts
                             48   
   4DCA F5            [11]   49    push af     ;; [4] Save all standard registers on the stack
   4DCB C5            [11]   50    push bc     ;; [4]
   4DCC D5            [11]   51    push de     ;; [4]
   4DCD E5            [11]   52    push hl     ;; [4]
   4DCE DD E5         [15]   53    push ix     ;; [5]
   4DD0 FD E5         [15]   54    push iy     ;; [5]
                             55    
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



   4DD2 D9            [ 4]   56    exx         ;; [1] Switch to alternate registers
   4DD3 08            [ 4]   57    ex af,af'   ;; [1] |
                             58    
   4DD4 F5            [11]   59    push af     ;; [4] Save all alternate registers
   4DD5 C5            [11]   60    push bc     ;; [4]
   4DD6 D5            [11]   61    push de     ;; [4]
   4DD7 E5            [11]   62    push hl     ;; [4]
                             63    
   4DD8                      64 safeInterruptHandlerCall:   
   4DD8 CD 00 00      [17]   65    call #0000  ;; [5] Call Interrupt Handler
                             66 
   4DDB E1            [10]   67    pop  hl     ;; [3] Restore all alternate registers
   4DDC C1            [10]   68    pop  bc     ;; [3]
   4DDD D1            [10]   69    pop  de     ;; [3]
   4DDE F1            [10]   70    pop  af     ;; [3]
                             71    
   4DDF D9            [ 4]   72    exx         ;; [1] Switch to standard registers
   4DE0 08            [ 4]   73    ex af,af'   ;; [1] |
                             74    
   4DE1 FD E1         [14]   75    pop  iy     ;; [5] Restore all standard registers
   4DE3 DD E1         [14]   76    pop  ix     ;; [5] 
   4DE5 E1            [10]   77    pop  hl     ;; [3]
   4DE6 D1            [10]   78    pop  de     ;; [3]
   4DE7 C1            [10]   79    pop  bc     ;; [3]
   4DE8 F1            [10]   80    pop  af     ;; [3]
                             81    
   4DE9 FB            [ 4]   82    ei          ;; [1] Reenable interrupts
   4DEA ED 4D         [14]   83    reti        ;; [3] Return to main program
