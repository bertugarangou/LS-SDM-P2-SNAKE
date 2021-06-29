#include <xc.h>
#include "MMenu.h"
#include "GLCDGestioLCD.h"
#include "LcTLCD.h"
#include "HHora.h"
#include "Ssms.h"
#include "UUsuaris.h"
#include "JJoc.h"
#include "CtoA.h"
#include "TiTTimer.h"

#define neg -1

char selectUser[] = "1. Select User";
char newUser[] = "New User";
char enterName[] = "Enter Name:";
char highScore[] = "High score:";
char enterNewName[] = "Enter New Name";
const char currentTime[] = "Current Time";
const char timeFormat[] = "(HH:mm):";
const char Score[] = "Score:";
const char editName[] = "Edit Name";
const char deleteUser[] = "Delete User";

unsigned char menuDalt = 0;
signed char NovaTecla = neg;
signed char novaLletra = neg;
char horaTmp[5];
unsigned char pos;
char username[11];
__bit posFletxa = 0;
char timerMenu;
char desplacats;
char *score_ptr;

void Minit(void){
    timerMenu = TiGetTimer();
}


void MTMenu(void){
    static char state = 0;
    switch(state) {
		case 0:
			if (LcLliure()) {
				LcClear();
				SiFerMenu();
				GLCDMostraMenu(menuDalt);
				NovaTecla = -1;
				SMSoff();
				LcCursorOff();
				state = 1;
			}
		break;
		case 1:
			if (NovaTecla == 2) {
				if(menuDalt > 0) menuDalt--;
				state = 0;
			}
			else if (NovaTecla == 8) {
				if(menuDalt < 5) menuDalt++;
				state = 0;
			}
			else if (NovaTecla == 10 && menuDalt == 5) {
				LcClear();
				NoFerMenu();
				LcNewString("Enter new time");
				NovaTecla = -1;
				state = 11;
			}
			else if (NovaTecla == 10 && menuDalt == 0) {
				NoFerMenu();
				LcClear();
				state = 12;
			}
			else if (NovaTecla == 10 && menuDalt == 4) {
				LcClear();
				NoFerMenu();
				state = 2;
			}
			else if (NovaTecla == 10 && menuDalt == 3 && UgetNumUsuaris() > 0) {
				NoFerMenu();
				menuDalt = 0;
				state = 28;
			}
			else if (NovaTecla == 10 && menuDalt == 1 && UgetNumUsuaris()>0) {
				NoFerMenu();
				menuDalt = 0;
				LcClear();
				state = 36;
			}
		break;
		case 2:
			if (LcLliure()) {
				LcNewString("Current Time");
				state = 3;
			}
		break;
		case 4:
			if (HNouMinut() && NovaTecla != 11 && LcLliure()) {
				HClearNouMinut();
				LcClear();
				state = 2;
			}
			else if (NovaTecla == 11 && LcLliure()) {
				state = 0;
			}
		break;
		case 11:
			if (LcLliure()) {
				LcGotoXY(0,1);
				LcNewString("(HH:MM): ");
				LcCursorOn();
				state = 5;
			}
		break;
		case 5:
			if (NovaTecla > -1) {
				horaTmp[0] = NovaTecla+48;
				LcPutChar(horaTmp[0]);
				NovaTecla = -1;
				state = 6;
			}
		break;
		case 6:
			if (NovaTecla > -1) {
				horaTmp[1] = NovaTecla+48;
				LcPutChar(horaTmp[1]);
				NovaTecla = -1;
				state = 7;
			}
		break;
		case 7:
			LcPutChar(':');
			state = 8;
		break;
		case 8:
			if (NovaTecla > -1) {
				horaTmp[2] = NovaTecla+48;
				LcPutChar(horaTmp[2]);
				NovaTecla = -1;
				state = 9;
			}
		break;
		case 9:
			if (NovaTecla > -1) {
				horaTmp[3] = NovaTecla+48;
				LcPutChar(horaTmp[3]);
				NovaTecla = -1;
				state = 10;
			}
		break;
		case 10:
			if (NovaTecla == 10) {
				HActualitzarHora(horaTmp);
				NovaTecla = -1;
				LcCursorOff();
				state = 0;
			}
		break;
		case 3:
			if (LcLliure()) {
				LcGotoXY(0,1);
				LcNewString(HGetTime());
				state = 4;
			}
		break;
		case 12:
			if (LcLliure()) {
				LcNewString("1. Select User");
				state = 13;
			}
		break;
		case 14:
			if (NovaTecla == 1 && UgetNumUsuaris() >= 1) {
				LcClear();
				menuDalt=0;
				NovaTecla = -1;
				state = 20;
			}
			else if (NovaTecla == 2) {
				NovaTecla = -1;
				SMSon();
				LcCursorOn();
				LcClear();
				LcNewString("Enter name:");
				state = 16;
			}
		break;
		case 17:
			if (LcLliure() && novaLletra > 47 && NovaTecla < 10 && UgetNumUsuaris() < 20) {
				LcPutChar(novaLletra);
				NovaTecla = -1;
				UAfegirLletraUsername(novaLletra);
				novaLletra = -1;
				state = 19;
			}
			else if (NovaTecla == 10 && UgetNumUsuaris() < 20) {
				LcCursorOff();
				UAfegirLletraUsername('\0');
				SMSoff();
				LcClear();
				menuDalt = UgetNumUsuaris()-1;
				state = 24;
			}
			else if (NovaTecla == 11 || UgetNumUsuaris() >= 20) {
				LcCursorOff();
				UCancelaNouUser();
				menuDalt = 0;
				state = 0;
			}
		break;
		case 20:
			if (LcLliure()) {
				LcClear();
				LcPutFletxa();
				LcGotoXY(3,0);
				LcNewString(UgetUserName(menuDalt));
				NovaTecla = -1;
				state = 23;
			}
		break;
		case 19:
			if (LcLliure()) {
				state = 17;
			}
		break;
		case 24:
			if (LcLliure()) {
				NovaTecla = -1;
				LcNewString(UgetUserName(menuDalt));
				JJuguem(menuDalt);
				HJuguem();
				state = 25;
			}
		break;
		case 13:
			if (LcLliure()) {
				LcGotoXY(0,1);
				LcNewString("2. New User");
				NovaTecla = -1;
				state = 14;
			}
		break;
		case 16:
			if (LcLliure()) {
				LcGotoXY(0,1);
				pos = 0;
				UcreateUser();
				state = 17;
			}
		break;
		case 21:
			if (NovaTecla == 8) {
				if (menuDalt<UgetNumUsuaris()-1) menuDalt++;
				state = 20;
			}
			else if (NovaTecla == 2) {
				if (menuDalt>0) menuDalt--;
				state = 20;
			}
			else if (NovaTecla == 11) {
				NovaTecla = -1;
				menuDalt = 0;
				state = 0;
			}
			else if (NovaTecla == 10) {
				LcClear();
				state = 24;
			}
		break;
		case 23:
			if (LcLliure()) {
				LcGotoXY(3,1);
				if(menuDalt+2 <= UgetNumUsuaris()) LcNewString(UgetUserName(menuDalt+1));
				state = 21;
			}
		break;
		case 25:
			if (JUsuari() == -1 && LcLliure()) {
				HNoJuguem();
				LcGotoXY(0,0);
				LcNewString(Score);
				state = 26;
			}
		break;
		case 26:
			if (LcLliure()) {
				LcGotoXY(0,1);
				LcNewString(highScore);
				NovaTecla = -1;
				state = 27;
			}
		break;
		case 27:
			if (LcLliure() && NovaTecla == 10) {
				menuDalt = 0;
				state = 0;
			}
		break;
		case 28:
			LcClear();
			LcPutFletxa();
			LcGotoXY(3,0);
			NovaTecla = -1;
			LcNewString(UgetUserName(menuDalt));
			state = 29;
		break;
		case 29:
			if (LcLliure()) {
				LcGotoXY(3,1);
				if(menuDalt+2 <= UgetNumUsuaris()) LcNewString(UgetUserName(menuDalt+1));
				state = 30;
			}
		break;
		case 30:
			if (NovaTecla == 8 && LcLliure()) {
				if(menuDalt<UgetNumUsuaris()-1)menuDalt++;
				state = 28;
			}
			else if (NovaTecla == 2 && LcLliure()) {
				if(menuDalt>0) menuDalt--;
				state = 28;
			}
			else if (NovaTecla == 11) {
				menuDalt = 0;
				state = 0;
			}
			else if (NovaTecla == 10) {
				state = 34;
			}
		break;
		case 31:
			if (LcLliure()) {
				LcGotoXY(3,1);
				LcNewString(deleteUser);
				state = 32;
			}
		break;
		case 32:
			if (NovaTecla == 8) {
				posFletxa = 1;
				state = 34;
			}
			else if (NovaTecla == 2) {
				posFletxa = 0;
				state = 34;
			}
			else if (NovaTecla == 10 && posFletxa) {
				UdelUser(menuDalt);
				menuDalt = 0;
				state = 0;
			}
			else if (NovaTecla == 10 && posFletxa == 0) {
				LcClear();
				LcNewString(enterNewName);
				NovaTecla = -1;
				//novaLletra = -1;
				state = 33;
			}
		break;
		case 34:

		break;
		case 33:
			if (LcLliure()) {
				LcGotoXY(0,1);
				SMSon();
				pos=0;
				LcCursorOn();
				state = 35;
			}
		break;
		case 35:
			if (NovaTecla == 10) {
				menuDalt = 0;
				state = 0;
			}
			else if (NovaTecla != 10 && NovaTecla > -1) {
				LcPutChar(novaLletra);
				NovaTecla = -1;
				UeditUsername(menuDalt,pos,novaLletra);
				pos++;
				novaLletra = -1;
				state = 35;
			}
		break;
		case 36:
			CToAReset();
			CToAConverteix(UgetScore(menuDalt));
			pos = 0;
			state = 37;
		break;
		case 37:
			if (CToAHaAcabat() == 250) {
				score_ptr = CToAobtenir();
				state = 38;
			}
		break;
		case 38:
			if(pos < 10){
				LcGotoXY(pos,0);
				if(UgetUserName(menuDalt)+pos != '\0'){
					LcPutChar(UgetUserName(menuDalt)+pos);
				}	
			}
			if(desplacats-1 > 0){
				LcGotoXY(pos,0);
				if(UgetUserName(menuDalt+1)+desplacats-1 != '\0'){
					LcPutChar(UgetUserName(menuDalt+1)+desplacats-1);
				}
			}
			pos++;
			state = 39;
		break;
		case 39:
			if (pos < 16) {
				state = 38;
			}
			else if (pos > 15) {
				TiResetTics(timerMenu);
				pos = 0;
				desplacats++;
				state = 40;
			}
		break;
		case 40:
			if (TiGetTics(timerMenu) > 1999) {
				LcClear();
				state = 41;
			}
			else if (NovaTecla == 11) {
				menuDalt = 0;
				state = 0;
			}
		break;
		case 41:
			if (menuDalt < UgetNumUsuaris() && desplacats < 15) {
				state = 38;
			}
			else if (menuDalt == UgetNumUsuaris()) {
				menuDalt = 0;
				state = 0;
			}
			else if (desplacats == 15) {
				desplacats = 0;
				menuDalt++;
				state = 36;
			}
		break;
	}
}

void MsetNovaTecla(char tecla){
    NovaTecla = tecla;
}

void MNovaLletra(char lletra){
    novaLletra = lletra;
}