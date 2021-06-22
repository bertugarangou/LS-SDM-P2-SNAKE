#include <xc.h>
#include <pic18f4321.h>
#include "JJoc.h"


void AdInit(void){
    ADCON0 = 0x01;//00000001 chA //000001_1 chB
    ADCON1 = 0x0D;//00001101
    ADCON2 = 0x09;//00001110
}
void AdMotor(void) {
	static char state = 0;
	switch(state) {
		case 0:
			if (ADCON0bits.GODONE == 0 && ADRESH < 200 && ADRESH > 50) {
				ADCON0 = 0x07;
				state = 1;
			}
			else if (ADCON0bits.GODONE == 0 && ADRESH > 200) {
				JnovaTecla(2);
				ADCON0bits.GODONE = 1;
				state = 2;
			}
			else if (ADCON0bits.GODONE == 0 && ADRESH < 50) {
				JnovaTecla(8);
				ADCON0bits.GODONE = 1;
				state = 5;
			}
		break;
		case 1:
			if (ADCON0bits.GODONE == 0 && ADRESH < 200 && ADRESH > 50) {
				ADCON0 = 0x03;
				state = 0;
			}
			else if (ADCON0bits.GODONE == 0 && ADRESH > 200) {
				JnovaTecla(6);
				ADCON0 = 0x07;
				state = 3;
			}
			else if (ADCON0bits.GODONE == 0 && ADRESH < 50) {
				JnovaTecla(4);
				ADCON0 = 0x07;
				state = 4;
			}
		break;
		case 2:
			if (ADRESH < 200) {
				ADCON0 = 0x07;
				state = 1;
			}
			else if (ADCON0bits.GODONE == 0 && ADRESH > 200) {
				ADCON0bits.GODONE = 1;
			}
		break;
		case 3:
			if (ADRESH < 200) {
				ADCON0 = 0x03;
				state = 0;
			}
			else if (ADCON0bits.GODONE == 0 && ADRESH > 200) {
				ADCON0bits.GODONE = 1;
			}
		break;
		case 4:
			if (ADRESH > 50) {
				ADCON0 = 0x03;
				state = 0;
			}
			else if (ADCON0bits.GODONE == 0 && ADRESH < 50) {
				ADCON0bits.GODONE = 1;
			}
		break;
		case 5:
			if (ADRESH > 50) {
				ADCON0 = 0x07;
				state = 1;
			}
			else if (ADCON0bits.GODONE == 0 && ADRESH < 50) {
				ADCON0bits.GODONE = 1;
			}
		break;
	}
}