//-----------------------------LICENSE NOTICE------------------------------------
//  ArkosTracker 2 for CPCTelera
//  Copyright (C) 2020 Arnaud Bouche (@Arnaud6128)
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//------------------------------------------------------------------------------

#include <cpctelera.h>
#include "sound.h"

// Uncomment if your code use alternate registers
//#include "optional/setInterruptHandler.h"

// Interrupt handler
void sInterruptHandler(void)
{
	static u8 sInterrupt = 0;

	// Play sound at 1/50th
	if (++sInterrupt == 6)
	{				
		PlaySound();
		cpct_scanKeyboard_if();
		
		sInterrupt = 0;		
	}
}

// Main loop
void main(void) 
{
	// Intro text
	cpct_setDrawCharM1(1, 0);
	cpct_drawStringM1("ArkosTracker 2 demo", cpct_getScreenPtr(CPCT_VMEM_START, 20, 90));
	cpct_setDrawCharM1(2, 0);
	cpct_drawStringM1("Press 1 to 5 to play Sfx", cpct_getScreenPtr(CPCT_VMEM_START, 15, 104));
	
	// Init sounds
	InitSound();
	
	// Play sound on interrupt
	cpct_setInterruptHandler(sInterruptHandler);
	PlayMusic(0);

	// Loop forever
	while (1)
	{
		if (cpct_isKeyPressed(Key_1))
		{
			// Play sound 1 on Channel A with sound Max (0 > 10)
			PlaySFX(1, CHANNEL_A, MAX_VOL);
		}	
		else if (cpct_isKeyPressed(Key_2))
		{
			PlaySFX(2, CHANNEL_A, MAX_VOL);
		}					
		else if (cpct_isKeyPressed(Key_3))
		{
			PlaySFX(3, CHANNEL_B, MAX_VOL);
		}					
		else if (cpct_isKeyPressed(Key_4))
		{
			PlaySFX(4, CHANNEL_B, MAX_VOL);
		}					
		else if (cpct_isKeyPressed(Key_5))
		{
			PlaySFX(5, CHANNEL_C, MAX_VOL);
		}			
		
		// You can directly play sound in main loop instead of in interruption
		//PlaySound();
		cpct_waitVSYNC(); // Wait for next 1/50th second
	}
}
