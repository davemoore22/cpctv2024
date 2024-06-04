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

#include "strings.h"

/* Game Strings */
const char *const g_strings[] = {
	/* Title Screen 0-9 */
	"A REMAKE BY", "    DAVE MOORE (C) 2024   ", "BASED ON TRANSVERSION BY",
	"C. F. URQUHART AND N. PIERPOINT", "(C) OCEAN SOFTWARE LTD 1983",
	"MUSIC/SFX BY", "TARGHAN", "MADE WITH CPCTELERA", "", "",
	/* Title Screen 10-29 */
	"1.", "2.", "3.", "4.", "9.", "0.", "REDEFINE KEYS", "MUSIC/SFX ON/OFF",
	"SHOW HISCORES", "VIEW INSTRUCTIONS", "PLAY GAME", "QUIT", "", "", "",
	"", "", "..........", "0000000000", "TODAY'S HIGH SCORES",
	/* Instructions 30-49 */
	"YOUR MISSION AS CAPTAIN OF THE", "'ELIMINAX' IS TO ENTER THE",
	"GALACTIC GRID AND ELIMINATE THE", "ALIEN PODS, PASSING OVER THEM",
	"WITH YOUR RAYDON FIELD.", "", "THE GUARDIANS WILL TRY TO STOP",
	"YOU BY FIRING ALONG BOTH AXES", "OF THE GRID WITH LASERS AND",
	"BLASTERS. AS EACH POD AREA IS", "CLEARED YOU MOVE TO ANOTHER AND",
	"THE GUARDIANS BECOME MORE", "VICIOUS IN THE ATTEMPTS TO",
	"PROTECT THEIR SPAWN!", "", "", "", "", "INSTRUCTIONS", "PRESS ANY KEY",
	/* Redefine Keys 50-69 */
	"REDEFINE KEYS", "UP:", "DOWN:", "LEFT", "RIGHT:", "PAUSE:",
	"  PRESS NEW KEY FOR UP:  ", " PRESS NEW KEY FOR DOWN: ",
	" PRESS NEW KEY FOR LEFT: ", " PRESS NEW KEY FOR RIGHT:",
	" PRESS NEW KEY FOR PAUSE:", "                         ", "   UP",
	" DOWN", " LEFT", "RIGHT", "(ESC TO CANCEL)", "", "", "",
	/* Transition Screens 70-79 */
	"ROUND", "GRID", "GET READY!", "GAME OVER!", "CONGRATULATIONS!",
	"YOU HAVE BEEN DEFEATED!", "", "", "", "",
	/* HUD 80-89 */
	"0000000000", "SC:", "HI:", "LI:", "LV:", "-", "00", "", "", "",
	/* Boxes 90-199 */
	"GRID CLEAR!!!",
	"SCORE:", "TIME BONUS:", "TOTAL SCORE:", "GAME PAUSED!",
	"SPACE TO CONTINUE", "", "", "", "",
	/* Hi Scores 100-109 */
	"CONGRATULATIONS!", "YOU HAVE ACHIEVED A HIGH SCORE!",
	"ENTER YOUR INITIALS:", "***", "", "", "", "", "", "",
	/* End Game Victory 110-119 */
	"  WELL DONE,", "   CAPTAIN!", "  THE ALIENS ", "  AND THEIR",
	"  SPAWN ARE", "   DEFEATED!", "  BUT THEY", "WILL BE BACK!",
	"  CONTINUE?", "    (Y/N)"};
