#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c LcTLCD.c TiTTimer.c AlTAltaveu.c MMenu.c TeTeclat.c GLCDGestioLCD.c HHora.c Ssms.c AdAdcon.c UUsuaris.c JJoc.c SSIO.c CtoA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.p1 ${OBJECTDIR}/LcTLCD.p1 ${OBJECTDIR}/TiTTimer.p1 ${OBJECTDIR}/AlTAltaveu.p1 ${OBJECTDIR}/MMenu.p1 ${OBJECTDIR}/TeTeclat.p1 ${OBJECTDIR}/GLCDGestioLCD.p1 ${OBJECTDIR}/HHora.p1 ${OBJECTDIR}/Ssms.p1 ${OBJECTDIR}/AdAdcon.p1 ${OBJECTDIR}/UUsuaris.p1 ${OBJECTDIR}/JJoc.p1 ${OBJECTDIR}/SSIO.p1 ${OBJECTDIR}/CtoA.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/main.p1.d ${OBJECTDIR}/LcTLCD.p1.d ${OBJECTDIR}/TiTTimer.p1.d ${OBJECTDIR}/AlTAltaveu.p1.d ${OBJECTDIR}/MMenu.p1.d ${OBJECTDIR}/TeTeclat.p1.d ${OBJECTDIR}/GLCDGestioLCD.p1.d ${OBJECTDIR}/HHora.p1.d ${OBJECTDIR}/Ssms.p1.d ${OBJECTDIR}/AdAdcon.p1.d ${OBJECTDIR}/UUsuaris.p1.d ${OBJECTDIR}/JJoc.p1.d ${OBJECTDIR}/SSIO.p1.d ${OBJECTDIR}/CtoA.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.p1 ${OBJECTDIR}/LcTLCD.p1 ${OBJECTDIR}/TiTTimer.p1 ${OBJECTDIR}/AlTAltaveu.p1 ${OBJECTDIR}/MMenu.p1 ${OBJECTDIR}/TeTeclat.p1 ${OBJECTDIR}/GLCDGestioLCD.p1 ${OBJECTDIR}/HHora.p1 ${OBJECTDIR}/Ssms.p1 ${OBJECTDIR}/AdAdcon.p1 ${OBJECTDIR}/UUsuaris.p1 ${OBJECTDIR}/JJoc.p1 ${OBJECTDIR}/SSIO.p1 ${OBJECTDIR}/CtoA.p1

# Source Files
SOURCEFILES=main.c LcTLCD.c TiTTimer.c AlTAltaveu.c MMenu.c TeTeclat.c GLCDGestioLCD.c HHora.c Ssms.c AdAdcon.c UUsuaris.c JJoc.c SSIO.c CtoA.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4321
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LcTLCD.p1: LcTLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LcTLCD.p1.d 
	@${RM} ${OBJECTDIR}/LcTLCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LcTLCD.p1 LcTLCD.c 
	@-${MV} ${OBJECTDIR}/LcTLCD.d ${OBJECTDIR}/LcTLCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LcTLCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TiTTimer.p1: TiTTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TiTTimer.p1.d 
	@${RM} ${OBJECTDIR}/TiTTimer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TiTTimer.p1 TiTTimer.c 
	@-${MV} ${OBJECTDIR}/TiTTimer.d ${OBJECTDIR}/TiTTimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TiTTimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AlTAltaveu.p1: AlTAltaveu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlTAltaveu.p1.d 
	@${RM} ${OBJECTDIR}/AlTAltaveu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AlTAltaveu.p1 AlTAltaveu.c 
	@-${MV} ${OBJECTDIR}/AlTAltaveu.d ${OBJECTDIR}/AlTAltaveu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AlTAltaveu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MMenu.p1: MMenu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MMenu.p1.d 
	@${RM} ${OBJECTDIR}/MMenu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MMenu.p1 MMenu.c 
	@-${MV} ${OBJECTDIR}/MMenu.d ${OBJECTDIR}/MMenu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MMenu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TeTeclat.p1: TeTeclat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TeTeclat.p1.d 
	@${RM} ${OBJECTDIR}/TeTeclat.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TeTeclat.p1 TeTeclat.c 
	@-${MV} ${OBJECTDIR}/TeTeclat.d ${OBJECTDIR}/TeTeclat.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TeTeclat.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GLCDGestioLCD.p1: GLCDGestioLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GLCDGestioLCD.p1.d 
	@${RM} ${OBJECTDIR}/GLCDGestioLCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/GLCDGestioLCD.p1 GLCDGestioLCD.c 
	@-${MV} ${OBJECTDIR}/GLCDGestioLCD.d ${OBJECTDIR}/GLCDGestioLCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GLCDGestioLCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/HHora.p1: HHora.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HHora.p1.d 
	@${RM} ${OBJECTDIR}/HHora.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/HHora.p1 HHora.c 
	@-${MV} ${OBJECTDIR}/HHora.d ${OBJECTDIR}/HHora.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/HHora.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Ssms.p1: Ssms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Ssms.p1.d 
	@${RM} ${OBJECTDIR}/Ssms.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Ssms.p1 Ssms.c 
	@-${MV} ${OBJECTDIR}/Ssms.d ${OBJECTDIR}/Ssms.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Ssms.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AdAdcon.p1: AdAdcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AdAdcon.p1.d 
	@${RM} ${OBJECTDIR}/AdAdcon.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AdAdcon.p1 AdAdcon.c 
	@-${MV} ${OBJECTDIR}/AdAdcon.d ${OBJECTDIR}/AdAdcon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AdAdcon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/UUsuaris.p1: UUsuaris.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UUsuaris.p1.d 
	@${RM} ${OBJECTDIR}/UUsuaris.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/UUsuaris.p1 UUsuaris.c 
	@-${MV} ${OBJECTDIR}/UUsuaris.d ${OBJECTDIR}/UUsuaris.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/UUsuaris.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/JJoc.p1: JJoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/JJoc.p1.d 
	@${RM} ${OBJECTDIR}/JJoc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/JJoc.p1 JJoc.c 
	@-${MV} ${OBJECTDIR}/JJoc.d ${OBJECTDIR}/JJoc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/JJoc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SSIO.p1: SSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SSIO.p1.d 
	@${RM} ${OBJECTDIR}/SSIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/SSIO.p1 SSIO.c 
	@-${MV} ${OBJECTDIR}/SSIO.d ${OBJECTDIR}/SSIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SSIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/CtoA.p1: CtoA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CtoA.p1.d 
	@${RM} ${OBJECTDIR}/CtoA.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/CtoA.p1 CtoA.c 
	@-${MV} ${OBJECTDIR}/CtoA.d ${OBJECTDIR}/CtoA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/CtoA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LcTLCD.p1: LcTLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LcTLCD.p1.d 
	@${RM} ${OBJECTDIR}/LcTLCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LcTLCD.p1 LcTLCD.c 
	@-${MV} ${OBJECTDIR}/LcTLCD.d ${OBJECTDIR}/LcTLCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LcTLCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TiTTimer.p1: TiTTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TiTTimer.p1.d 
	@${RM} ${OBJECTDIR}/TiTTimer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TiTTimer.p1 TiTTimer.c 
	@-${MV} ${OBJECTDIR}/TiTTimer.d ${OBJECTDIR}/TiTTimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TiTTimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AlTAltaveu.p1: AlTAltaveu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlTAltaveu.p1.d 
	@${RM} ${OBJECTDIR}/AlTAltaveu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AlTAltaveu.p1 AlTAltaveu.c 
	@-${MV} ${OBJECTDIR}/AlTAltaveu.d ${OBJECTDIR}/AlTAltaveu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AlTAltaveu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MMenu.p1: MMenu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MMenu.p1.d 
	@${RM} ${OBJECTDIR}/MMenu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MMenu.p1 MMenu.c 
	@-${MV} ${OBJECTDIR}/MMenu.d ${OBJECTDIR}/MMenu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MMenu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TeTeclat.p1: TeTeclat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TeTeclat.p1.d 
	@${RM} ${OBJECTDIR}/TeTeclat.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TeTeclat.p1 TeTeclat.c 
	@-${MV} ${OBJECTDIR}/TeTeclat.d ${OBJECTDIR}/TeTeclat.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TeTeclat.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GLCDGestioLCD.p1: GLCDGestioLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GLCDGestioLCD.p1.d 
	@${RM} ${OBJECTDIR}/GLCDGestioLCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/GLCDGestioLCD.p1 GLCDGestioLCD.c 
	@-${MV} ${OBJECTDIR}/GLCDGestioLCD.d ${OBJECTDIR}/GLCDGestioLCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GLCDGestioLCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/HHora.p1: HHora.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HHora.p1.d 
	@${RM} ${OBJECTDIR}/HHora.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/HHora.p1 HHora.c 
	@-${MV} ${OBJECTDIR}/HHora.d ${OBJECTDIR}/HHora.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/HHora.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Ssms.p1: Ssms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Ssms.p1.d 
	@${RM} ${OBJECTDIR}/Ssms.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Ssms.p1 Ssms.c 
	@-${MV} ${OBJECTDIR}/Ssms.d ${OBJECTDIR}/Ssms.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Ssms.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AdAdcon.p1: AdAdcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AdAdcon.p1.d 
	@${RM} ${OBJECTDIR}/AdAdcon.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/AdAdcon.p1 AdAdcon.c 
	@-${MV} ${OBJECTDIR}/AdAdcon.d ${OBJECTDIR}/AdAdcon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AdAdcon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/UUsuaris.p1: UUsuaris.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UUsuaris.p1.d 
	@${RM} ${OBJECTDIR}/UUsuaris.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/UUsuaris.p1 UUsuaris.c 
	@-${MV} ${OBJECTDIR}/UUsuaris.d ${OBJECTDIR}/UUsuaris.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/UUsuaris.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/JJoc.p1: JJoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/JJoc.p1.d 
	@${RM} ${OBJECTDIR}/JJoc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/JJoc.p1 JJoc.c 
	@-${MV} ${OBJECTDIR}/JJoc.d ${OBJECTDIR}/JJoc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/JJoc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SSIO.p1: SSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SSIO.p1.d 
	@${RM} ${OBJECTDIR}/SSIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/SSIO.p1 SSIO.c 
	@-${MV} ${OBJECTDIR}/SSIO.d ${OBJECTDIR}/SSIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SSIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/CtoA.p1: CtoA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CtoA.p1.d 
	@${RM} ${OBJECTDIR}/CtoA.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/CtoA.p1 CtoA.c 
	@-${MV} ${OBJECTDIR}/CtoA.d ${OBJECTDIR}/CtoA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/CtoA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -mrom=default,-1dc0-1fff -mram=default,-1f4-1ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c90" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/c99" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/legacy" -I"../../../../../../../Program Files/Microchip/xc8/v2.32/pic/include/proc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Codi.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
