#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
MKDIR=mkdir -p
RM=rm -f 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.cof
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.cof
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/clock.p1 ${OBJECTDIR}/main.p1


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\ \(x86\)\\Java\\jre6/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\ \(x86\)\\HI-TECH\ Software\\PICC-18\\PRO\\9.66\\bin\\picc18.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\ \(x86\)\\HI-TECH\ Software\\PICC-18\\PRO\\9.66\\bin\\picc18.exe
MP_LD=C:\\Program\ Files\ \(x86\)\\HI-TECH\ Software\\PICC-18\\PRO\\9.66\\bin\\picc18.exe
MP_AR=C:\\Program\ Files\ \(x86\)\\HI-TECH\ Software\\PICC-18\\PRO\\9.66\\bin\\picc18.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\ \(x86\)\\HI-TECH\ Software\\PICC-18\\PRO\\9.66\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\ \(x86\)\\HI-TECH\ Software\\PICC-18\\PRO\\9.66\\bin
MP_LD_DIR=C:\\Program\ Files\ \(x86\)\\HI-TECH\ Software\\PICC-18\\PRO\\9.66\\bin
MP_AR_DIR=C:\\Program\ Files\ \(x86\)\\HI-TECH\ Software\\PICC-18\\PRO\\9.66\\bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.cof

MP_PROCESSOR_OPTION=18F4550
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/clock.p1: clock.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 clock.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --warn=9 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 -D__DEBUG --debugger=pickit2 --cp=16 -Blarge --double=24  --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 clock.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --warn=9 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 -D__DEBUG --debugger=pickit2 --cp=16 -Blarge --double=24  --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo " ${OBJECTDIR}/clock.p1:\\" > ${OBJECTDIR}/clock.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/clock.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/clock.p1.d
else 
	@cat ${OBJECTDIR}/clock.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/clock.p1.d
endif
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --warn=9 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 -D__DEBUG --debugger=pickit2 --cp=16 -Blarge --double=24  --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --warn=9 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 -D__DEBUG --debugger=pickit2 --cp=16 -Blarge --double=24  --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo " ${OBJECTDIR}/main.p1:\\" > ${OBJECTDIR}/main.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/main.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/main.p1.d
else 
	@cat ${OBJECTDIR}/main.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/main.p1.d
endif
else
${OBJECTDIR}/clock.p1: clock.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 clock.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --warn=9 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 --cp=16 -Blarge --double=24  --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 clock.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --warn=9 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 --cp=16 -Blarge --double=24  --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo " ${OBJECTDIR}/clock.p1:\\" > ${OBJECTDIR}/clock.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/clock.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/clock.p1.d
else 
	@cat ${OBJECTDIR}/clock.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/clock.p1.d
endif
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --warn=9 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 --cp=16 -Blarge --double=24  --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	${MP_CC} --scandep --pass1 main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --warn=9 --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 --cp=16 -Blarge --double=24  --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	echo " ${OBJECTDIR}/main.p1:\\" > ${OBJECTDIR}/main.p1.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@cat ${OBJECTDIR}/main.dep | sed -e 's/^ *//' -e 's/\\/\//g' -e 's/ /\\ /g' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/main.p1.d
else 
	@cat ${OBJECTDIR}/main.dep | sed -e 's/^ *//' -e 's/^.*$$/ &\\/g'  >> ${OBJECTDIR}/main.p1.d
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.cof -mdist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 -D__DEBUG --debugger=pickit2 -N31 --warn=9 --cp=16 -Blarge --double=24  --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES}  
	${RM} dist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.cof -mdist/${CND_CONF}/${IMAGE_TYPE}/ButtonDebounce.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,-download,+stackwarn,-config,+clib,-plib --opt=default,+asm,-asmfile,-9 -N31 --warn=9 --cp=16 -Blarge --double=24  --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES}  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
