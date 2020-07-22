;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"blink.c"
	list	p=16f690
	radix dec
	include "p16f690.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x30d5
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_ANSELH
	extern	_ANSEL
	extern	_TRISCbits
	extern	_TRISAbits
	extern	_PORTCbits
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_setleds
	global	_delay

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_blink_0	udata
r0x1014	res	1
r0x1015	res	1
r0x1017	res	1
r0x1019	res	1
r0x101B	res	1
r0x101C	res	1
r0x101D	res	1
r0x101E	res	1
r0x101F	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
r0x1023	res	1
r0x1024	res	1
r0x1025	res	1
r0x1026	res	1
r0x1027	res	1
r0x1028	res	1
r0x1029	res	1
_main_estados_65536_5	res	20
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_blink	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;functions called:
;   _setleds
;   _delay
;   _setleds
;   _delay
;   _setleds
;   _delay
;   _setleds
;   _delay
;20 compiler assigned registers:
;   r0x101D
;   r0x101E
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   r0x1026
;   r0x1027
;   r0x1028
;   r0x1029
;   STK06
;   STK05
;   STK04
;   STK03
;   STK02
;   STK01
;   STK00
;; Starting pCode block
S_blink__main	code
_main:
; 2 exit points
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
;	.line	33; "blink.c"	char estados[5][4] = {{1,0,0,0},{1,1,0,0},{0,1,1,0},{0,0,1,1},{0,0,0,1}};
	MOVLW	0x01
	BANKSEL	_main_estados_65536_5
	MOVWF	(_main_estados_65536_5 + 0)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 1)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 2)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 3)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x01
	MOVWF	(_main_estados_65536_5 + 4)
	MOVWF	(_main_estados_65536_5 + 5)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 6)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 7)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 8)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x01
	MOVWF	(_main_estados_65536_5 + 9)
	MOVWF	(_main_estados_65536_5 + 10)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 11)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 12)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 13)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x01
	MOVWF	(_main_estados_65536_5 + 14)
	MOVWF	(_main_estados_65536_5 + 15)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 16)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 17)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	CLRF	(_main_estados_65536_5 + 18)
;;/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6828: size=0, offset=0, AOP_TYPE(res)=8
	MOVLW	0x01
	MOVWF	(_main_estados_65536_5 + 19)
;	.line	35; "blink.c"	TRISC0 = 0;
	BANKSEL	_TRISCbits
	BCF	_TRISCbits,0
;	.line	36; "blink.c"	TRISC1 = 0;
	BCF	_TRISCbits,1
;	.line	37; "blink.c"	TRISC2 = 0;
	BCF	_TRISCbits,2
;	.line	38; "blink.c"	TRISC3 = 0;
	BCF	_TRISCbits,3
;	.line	39; "blink.c"	TRISA3 = 1;
	BSF	_TRISAbits,3
;	.line	41; "blink.c"	ANSEL = 0;
	BANKSEL	_ANSEL
	CLRF	_ANSEL
;	.line	42; "blink.c"	ANSELH = 0;
	CLRF	_ANSELH
_00126_DS_:
;	.line	44; "blink.c"	while(!ANSEL) {
	BANKSEL	_ANSEL
	MOVF	_ANSEL,W
	BTFSS	STATUS,2
	GOTO	_00128_DS_
;	.line	46; "blink.c"	for (j=0;j<5;j++) {
	BANKSEL	r0x101D
	CLRF	r0x101D
	CLRF	r0x101E
	CLRF	r0x101F
	CLRF	r0x1020
_00129_DS_:
;	.line	47; "blink.c"	setleds(estados[j][0],estados[j][1],estados[j][2],estados[j][3]);
	BANKSEL	r0x101F
	MOVF	r0x101F,W
	ADDLW	(_main_estados_65536_5 + 0)
	MOVWF	r0x1021
	MOVLW	high (_main_estados_65536_5 + 0)
	MOVWF	r0x1022
	MOVF	r0x1020,W
	BTFSC	STATUS,0
	INCFSZ	r0x1020,W
	ADDWF	r0x1022,F
	MOVF	r0x1021,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1022
	BTFSC	r0x1022,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVWF	r0x1024
	CLRF	r0x1025
	MOVLW	0x01
	ADDWF	r0x1021,W
	MOVWF	r0x1023
	CLRF	r0x1026
	RLF	r0x1026,F
	MOVF	r0x1022,W
	ADDWF	r0x1026,F
	MOVF	r0x1023,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1026
	BTFSC	r0x1026,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1027
	MOVWF	r0x1027
	MOVWF	r0x1023
	CLRF	r0x1026
	MOVLW	0x02
	ADDWF	r0x1021,W
	MOVWF	r0x1027
	CLRF	r0x1028
	RLF	r0x1028,F
	MOVF	r0x1022,W
	ADDWF	r0x1028,F
	MOVF	r0x1027,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1028
	BTFSC	r0x1028,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1029
	MOVWF	r0x1029
	MOVWF	r0x1027
	CLRF	r0x1028
	MOVLW	0x03
	ADDWF	r0x1021,F
	BTFSC	STATUS,0
	INCF	r0x1022,F
	MOVF	r0x1021,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1022
	BTFSC	r0x1022,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1029
	MOVWF	r0x1029
	MOVWF	r0x1021
	CLRF	r0x1022
	MOVF	r0x1021,W
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVF	r0x1027,W
	MOVWF	STK04
	MOVF	r0x1028,W
	MOVWF	STK03
	MOVF	r0x1023,W
	MOVWF	STK02
	MOVF	r0x1026,W
	MOVWF	STK01
	MOVF	r0x1024,W
	MOVWF	STK00
	MOVF	r0x1025,W
	PAGESEL	_setleds
	CALL	_setleds
	PAGESEL	$
;	.line	48; "blink.c"	delay();
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	46; "blink.c"	for (j=0;j<5;j++) {
	MOVLW	0x04
	BANKSEL	r0x101F
	ADDWF	r0x101F,F
	BTFSC	STATUS,0
	INCF	r0x1020,F
	INCF	r0x101D,F
	BTFSC	STATUS,2
	INCF	r0x101E,F
;;signed compare: left < lit(0x5=5), size=2, mask=ffff
	MOVF	r0x101E,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00161_DS_
	MOVLW	0x05
	SUBWF	r0x101D,W
_00161_DS_:
	BTFSS	STATUS,0
	GOTO	_00129_DS_
;;genSkipc:3307: created from rifx:0x7ffd70991f20
;	.line	51; "blink.c"	for (j=4;j>=0;j--) {
	MOVLW	0x04
	BANKSEL	r0x101D
	MOVWF	r0x101D
	CLRF	r0x101E
	MOVLW	0x10
	MOVWF	r0x101F
	CLRF	r0x1020
_00131_DS_:
;	.line	52; "blink.c"	setleds(estados[j][0],estados[j][1],estados[j][2],estados[j][3]);
	BANKSEL	r0x101F
	MOVF	r0x101F,W
	ADDLW	(_main_estados_65536_5 + 0)
	MOVWF	r0x1021
	MOVLW	high (_main_estados_65536_5 + 0)
	MOVWF	r0x1022
	MOVF	r0x1020,W
	BTFSC	STATUS,0
	INCFSZ	r0x1020,W
	ADDWF	r0x1022,F
	MOVF	r0x1021,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1022
	BTFSC	r0x1022,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVWF	r0x1024
	CLRF	r0x1025
	MOVLW	0x01
	ADDWF	r0x1021,W
	MOVWF	r0x1023
	CLRF	r0x1026
	RLF	r0x1026,F
	MOVF	r0x1022,W
	ADDWF	r0x1026,F
	MOVF	r0x1023,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1026
	BTFSC	r0x1026,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1027
	MOVWF	r0x1027
	MOVWF	r0x1023
	CLRF	r0x1026
	MOVLW	0x02
	ADDWF	r0x1021,W
	MOVWF	r0x1027
	CLRF	r0x1028
	RLF	r0x1028,F
	MOVF	r0x1022,W
	ADDWF	r0x1028,F
	MOVF	r0x1027,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1028
	BTFSC	r0x1028,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1029
	MOVWF	r0x1029
	MOVWF	r0x1027
	CLRF	r0x1028
	MOVLW	0x03
	ADDWF	r0x1021,F
	BTFSC	STATUS,0
	INCF	r0x1022,F
	MOVF	r0x1021,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1022
	BTFSC	r0x1022,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1029
	MOVWF	r0x1029
	MOVWF	r0x1021
	CLRF	r0x1022
	MOVF	r0x1021,W
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVF	r0x1027,W
	MOVWF	STK04
	MOVF	r0x1028,W
	MOVWF	STK03
	MOVF	r0x1023,W
	MOVWF	STK02
	MOVF	r0x1026,W
	MOVWF	STK01
	MOVF	r0x1024,W
	MOVWF	STK00
	MOVF	r0x1025,W
	PAGESEL	_setleds
	CALL	_setleds
	PAGESEL	$
;	.line	53; "blink.c"	delay();
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	51; "blink.c"	for (j=4;j>=0;j--) {
	MOVLW	0xfc
	BANKSEL	r0x101F
	ADDWF	r0x101F,F
	BTFSS	STATUS,0
	DECF	r0x1020,F
	MOVLW	0xff
	ADDWF	r0x101D,F
	BTFSS	STATUS,0
	DECF	r0x101E,F
;;signed compare: left < lit(0x0=0), size=2, mask=ffff
	BSF	STATUS,0
	BTFSS	r0x101E,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00131_DS_
;;genSkipc:3307: created from rifx:0x7ffd70991f20
	GOTO	_00126_DS_
_00128_DS_:
;	.line	57; "blink.c"	return 0;
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
;	.line	58; "blink.c"	}
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;16 compiler assigned registers:
;   r0x1014
;   STK00
;   r0x1015
;   STK01
;   r0x1016
;   STK02
;   r0x1017
;   STK03
;   r0x1018
;   STK04
;   r0x1019
;   STK05
;   r0x101A
;   STK06
;   r0x101B
;   r0x101C
;; Starting pCode block
S_blink__setleds	code
_setleds:
; 2 exit points
;;1	MOVWF	r0x1014
;	.line	19; "blink.c"	void setleds(int l0, int l1, int l2, int l3)
	MOVF	STK00,W
	BANKSEL	r0x101C
	MOVWF	r0x101C
	MOVWF	r0x1015
	MOVF	STK01,W
;;1	MOVWF	r0x1016
	MOVF	STK02,W
	MOVWF	r0x1017
	MOVF	STK03,W
;;1	MOVWF	r0x1018
	MOVF	STK04,W
	MOVWF	r0x1019
	MOVF	STK05,W
;;1	MOVWF	r0x101A
	MOVF	STK06,W
	MOVWF	r0x101B
;;99	MOVF	r0x1015,W
;	.line	21; "blink.c"	RC0 = l0;
	RRF	r0x101C,W
	BTFSC	STATUS,0
	GOTO	_00001_DS_
	BANKSEL	_PORTCbits
	BCF	_PORTCbits,0
_00001_DS_:
	BTFSS	STATUS,0
	GOTO	_00002_DS_
	BANKSEL	_PORTCbits
	BSF	_PORTCbits,0
_00002_DS_:
;	.line	22; "blink.c"	RC1 = l1;
	BANKSEL	r0x1017
	MOVF	r0x1017,W
	MOVWF	r0x1015
	RRF	r0x1015,W
	BTFSC	STATUS,0
	GOTO	_00003_DS_
	BANKSEL	_PORTCbits
	BCF	_PORTCbits,1
_00003_DS_:
	BTFSS	STATUS,0
	GOTO	_00004_DS_
	BANKSEL	_PORTCbits
	BSF	_PORTCbits,1
_00004_DS_:
;	.line	23; "blink.c"	RC2 = l2;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	MOVWF	r0x1015
	RRF	r0x1015,W
	BTFSC	STATUS,0
	GOTO	_00005_DS_
	BANKSEL	_PORTCbits
	BCF	_PORTCbits,2
_00005_DS_:
	BTFSS	STATUS,0
	GOTO	_00006_DS_
	BANKSEL	_PORTCbits
	BSF	_PORTCbits,2
_00006_DS_:
;	.line	24; "blink.c"	RC3 = l3;
	BANKSEL	r0x101B
	MOVF	r0x101B,W
	MOVWF	r0x1015
	RRF	r0x1015,W
	BTFSC	STATUS,0
	GOTO	_00007_DS_
	BANKSEL	_PORTCbits
	BCF	_PORTCbits,3
_00007_DS_:
	BTFSS	STATUS,0
	GOTO	_00008_DS_
	BANKSEL	_PORTCbits
	BSF	_PORTCbits,3
_00008_DS_:
;	.line	26; "blink.c"	}
	RETURN	
; exit point of _setleds

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x1014
;   r0x1015
;; Starting pCode block
S_blink__delay	code
_delay:
; 2 exit points
;	.line	15; "blink.c"	for (i=0;i<8000;i++) k=i*2.1;
	BANKSEL	r0x1014
	CLRF	r0x1014
	CLRF	r0x1015
_00106_DS_:
	BANKSEL	r0x1014
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;;signed compare: left < lit(0x1F40=8000), size=2, mask=ffff
	MOVF	r0x1015,W
	ADDLW	0x80
	ADDLW	0x61
	BTFSS	STATUS,2
	GOTO	_00115_DS_
	MOVLW	0x40
	SUBWF	r0x1014,W
_00115_DS_:
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3307: created from rifx:0x7ffd70991f20
;	.line	17; "blink.c"	}
	RETURN	
; exit point of _delay


;	code size estimation:
;	  301+   64 =   365 instructions (  858 byte)

	end
