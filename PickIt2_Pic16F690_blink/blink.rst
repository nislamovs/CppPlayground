                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module blink
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _setleds_PARM_4
                                     12 	.globl _setleds_PARM_3
                                     13 	.globl _setleds_PARM_2
                                     14 	.globl _main
                                     15 	.globl _setleds
                                     16 	.globl _delay
                                     17 ;--------------------------------------------------------
                                     18 ; special function registers
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; special function bits
                                     24 ;--------------------------------------------------------
                                     25 	.area RSEG    (ABS,DATA)
      000000                         26 	.org 0x0000
                                     27 ;--------------------------------------------------------
                                     28 ; overlayable register banks
                                     29 ;--------------------------------------------------------
                                     30 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         31 	.ds 8
                                     32 ;--------------------------------------------------------
                                     33 ; internal ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DSEG    (DATA)
      000008                         36 _main_estados_65536_5:
      000008                         37 	.ds 20
                                     38 ;--------------------------------------------------------
                                     39 ; overlayable items in internal ram 
                                     40 ;--------------------------------------------------------
                                     41 	.area	OSEG    (OVR,DATA)
                                     42 	.area	OSEG    (OVR,DATA)
      00001C                         43 _setleds_PARM_2:
      00001C                         44 	.ds 2
      00001E                         45 _setleds_PARM_3:
      00001E                         46 	.ds 2
      000020                         47 _setleds_PARM_4:
      000020                         48 	.ds 2
                                     49 ;--------------------------------------------------------
                                     50 ; Stack segment in internal ram 
                                     51 ;--------------------------------------------------------
                                     52 	.area	SSEG
      000022                         53 __start__stack:
      000022                         54 	.ds	1
                                     55 
                                     56 ;--------------------------------------------------------
                                     57 ; indirectly addressable internal ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area ISEG    (DATA)
                                     60 ;--------------------------------------------------------
                                     61 ; absolute internal ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area IABS    (ABS,DATA)
                                     64 	.area IABS    (ABS,DATA)
                                     65 ;--------------------------------------------------------
                                     66 ; bit data
                                     67 ;--------------------------------------------------------
                                     68 	.area BSEG    (BIT)
                                     69 ;--------------------------------------------------------
                                     70 ; paged external ram data
                                     71 ;--------------------------------------------------------
                                     72 	.area PSEG    (PAG,XDATA)
                                     73 ;--------------------------------------------------------
                                     74 ; external ram data
                                     75 ;--------------------------------------------------------
                                     76 	.area XSEG    (XDATA)
                                     77 ;--------------------------------------------------------
                                     78 ; absolute external ram data
                                     79 ;--------------------------------------------------------
                                     80 	.area XABS    (ABS,XDATA)
                                     81 ;--------------------------------------------------------
                                     82 ; external initialized ram data
                                     83 ;--------------------------------------------------------
                                     84 	.area XISEG   (XDATA)
                                     85 	.area HOME    (CODE)
                                     86 	.area GSINIT0 (CODE)
                                     87 	.area GSINIT1 (CODE)
                                     88 	.area GSINIT2 (CODE)
                                     89 	.area GSINIT3 (CODE)
                                     90 	.area GSINIT4 (CODE)
                                     91 	.area GSINIT5 (CODE)
                                     92 	.area GSINIT  (CODE)
                                     93 	.area GSFINAL (CODE)
                                     94 	.area CSEG    (CODE)
                                     95 ;--------------------------------------------------------
                                     96 ; interrupt vector 
                                     97 ;--------------------------------------------------------
                                     98 	.area HOME    (CODE)
      000000                         99 __interrupt_vect:
      000000 02 00 06         [24]  100 	ljmp	__sdcc_gsinit_startup
                                    101 ;--------------------------------------------------------
                                    102 ; global & static initialisations
                                    103 ;--------------------------------------------------------
                                    104 	.area HOME    (CODE)
                                    105 	.area GSINIT  (CODE)
                                    106 	.area GSFINAL (CODE)
                                    107 	.area GSINIT  (CODE)
                                    108 	.globl __sdcc_gsinit_startup
                                    109 	.globl __sdcc_program_startup
                                    110 	.globl __start__stack
                                    111 	.globl __mcs51_genXINIT
                                    112 	.globl __mcs51_genXRAMCLEAR
                                    113 	.globl __mcs51_genRAMCLEAR
                                    114 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  115 	ljmp	__sdcc_program_startup
                                    116 ;--------------------------------------------------------
                                    117 ; Home
                                    118 ;--------------------------------------------------------
                                    119 	.area HOME    (CODE)
                                    120 	.area HOME    (CODE)
      000003                        121 __sdcc_program_startup:
      000003 02 00 A0         [24]  122 	ljmp	_main
                                    123 ;	return from main will return to caller
                                    124 ;--------------------------------------------------------
                                    125 ; code
                                    126 ;--------------------------------------------------------
                                    127 	.area CSEG    (CODE)
                                    128 ;------------------------------------------------------------
                                    129 ;Allocation info for local variables in function 'delay'
                                    130 ;------------------------------------------------------------
                                    131 ;i                         Allocated to registers r6 r7 
                                    132 ;k                         Allocated to registers 
                                    133 ;------------------------------------------------------------
                                    134 ;	blink.c:11: void delay()
                                    135 ;	-----------------------------------------
                                    136 ;	 function delay
                                    137 ;	-----------------------------------------
      000062                        138 _delay:
                           000007   139 	ar7 = 0x07
                           000006   140 	ar6 = 0x06
                           000005   141 	ar5 = 0x05
                           000004   142 	ar4 = 0x04
                           000003   143 	ar3 = 0x03
                           000002   144 	ar2 = 0x02
                           000001   145 	ar1 = 0x01
                           000000   146 	ar0 = 0x00
                                    147 ;	blink.c:15: for (i=0;i<8000;i++) k=i*2.1;
      000062 7E 00            [12]  148 	mov	r6,#0x00
      000064 7F 00            [12]  149 	mov	r7,#0x00
      000066                        150 00102$:
      000066 0E               [12]  151 	inc	r6
      000067 BE 00 01         [24]  152 	cjne	r6,#0x00,00111$
      00006A 0F               [12]  153 	inc	r7
      00006B                        154 00111$:
      00006B C3               [12]  155 	clr	c
      00006C EE               [12]  156 	mov	a,r6
      00006D 94 40            [12]  157 	subb	a,#0x40
      00006F EF               [12]  158 	mov	a,r7
      000070 64 80            [12]  159 	xrl	a,#0x80
      000072 94 9F            [12]  160 	subb	a,#0x9f
      000074 40 F0            [24]  161 	jc	00102$
                                    162 ;	blink.c:17: }
      000076 22               [24]  163 	ret
                                    164 ;------------------------------------------------------------
                                    165 ;Allocation info for local variables in function 'setleds'
                                    166 ;------------------------------------------------------------
                                    167 ;l1                        Allocated with name '_setleds_PARM_2'
                                    168 ;l2                        Allocated with name '_setleds_PARM_3'
                                    169 ;l3                        Allocated with name '_setleds_PARM_4'
                                    170 ;l0                        Allocated to registers r6 r7 
                                    171 ;------------------------------------------------------------
                                    172 ;	blink.c:19: void setleds(int l0, int l1, int l2, int l3)
                                    173 ;	-----------------------------------------
                                    174 ;	 function setleds
                                    175 ;	-----------------------------------------
      000077                        176 _setleds:
      000077 AE 82            [24]  177 	mov	r6,dpl
                                    178 ;	blink.c:21: RC0 = l0;
      000079 78 00            [12]  179 	mov	r0,#_PORTCbits
      00007B EE               [12]  180 	mov	a,r6
      00007C 13               [12]  181 	rrc	a
      00007D E6               [12]  182 	mov	a,@r0
      00007E 92 E0            [24]  183 	mov	acc.0,c
      000080 F6               [12]  184 	mov	@r0,a
                                    185 ;	blink.c:22: RC1 = l1;
      000081 AF 1C            [24]  186 	mov	r7,_setleds_PARM_2
      000083 78 00            [12]  187 	mov	r0,#_PORTCbits
      000085 EF               [12]  188 	mov	a,r7
      000086 13               [12]  189 	rrc	a
      000087 E6               [12]  190 	mov	a,@r0
      000088 92 E1            [24]  191 	mov	acc.1,c
      00008A F6               [12]  192 	mov	@r0,a
                                    193 ;	blink.c:23: RC2 = l2;
      00008B AF 1E            [24]  194 	mov	r7,_setleds_PARM_3
      00008D 78 00            [12]  195 	mov	r0,#_PORTCbits
      00008F EF               [12]  196 	mov	a,r7
      000090 13               [12]  197 	rrc	a
      000091 E6               [12]  198 	mov	a,@r0
      000092 92 E2            [24]  199 	mov	acc.2,c
      000094 F6               [12]  200 	mov	@r0,a
                                    201 ;	blink.c:24: RC3 = l3;
      000095 AF 20            [24]  202 	mov	r7,_setleds_PARM_4
      000097 78 00            [12]  203 	mov	r0,#_PORTCbits
      000099 EF               [12]  204 	mov	a,r7
      00009A 13               [12]  205 	rrc	a
      00009B E6               [12]  206 	mov	a,@r0
      00009C 92 E3            [24]  207 	mov	acc.3,c
      00009E F6               [12]  208 	mov	@r0,a
                                    209 ;	blink.c:26: }
      00009F 22               [24]  210 	ret
                                    211 ;------------------------------------------------------------
                                    212 ;Allocation info for local variables in function 'main'
                                    213 ;------------------------------------------------------------
                                    214 ;j                         Allocated to registers r6 r7 
                                    215 ;estados                   Allocated with name '_main_estados_65536_5'
                                    216 ;------------------------------------------------------------
                                    217 ;	blink.c:28: int main ()
                                    218 ;	-----------------------------------------
                                    219 ;	 function main
                                    220 ;	-----------------------------------------
      0000A0                        221 _main:
                                    222 ;	blink.c:33: char estados[5][4] = {{1,0,0,0},{1,1,0,0},{0,1,1,0},{0,0,1,1},{0,0,0,1}};
      0000A0 75 08 01         [24]  223 	mov	_main_estados_65536_5,#0x01
      0000A3 75 09 00         [24]  224 	mov	(_main_estados_65536_5 + 0x0001),#0x00
      0000A6 75 0A 00         [24]  225 	mov	(_main_estados_65536_5 + 0x0002),#0x00
      0000A9 75 0B 00         [24]  226 	mov	(_main_estados_65536_5 + 0x0003),#0x00
      0000AC 75 0C 01         [24]  227 	mov	(_main_estados_65536_5 + 0x0004),#0x01
      0000AF 75 0D 01         [24]  228 	mov	(_main_estados_65536_5 + 0x0005),#0x01
      0000B2 75 0E 00         [24]  229 	mov	(_main_estados_65536_5 + 0x0006),#0x00
      0000B5 75 0F 00         [24]  230 	mov	(_main_estados_65536_5 + 0x0007),#0x00
      0000B8 75 10 00         [24]  231 	mov	(_main_estados_65536_5 + 0x0008),#0x00
      0000BB 75 11 01         [24]  232 	mov	(_main_estados_65536_5 + 0x0009),#0x01
      0000BE 75 12 01         [24]  233 	mov	(_main_estados_65536_5 + 0x000a),#0x01
      0000C1 75 13 00         [24]  234 	mov	(_main_estados_65536_5 + 0x000b),#0x00
      0000C4 75 14 00         [24]  235 	mov	(_main_estados_65536_5 + 0x000c),#0x00
      0000C7 75 15 00         [24]  236 	mov	(_main_estados_65536_5 + 0x000d),#0x00
      0000CA 75 16 01         [24]  237 	mov	(_main_estados_65536_5 + 0x000e),#0x01
      0000CD 75 17 01         [24]  238 	mov	(_main_estados_65536_5 + 0x000f),#0x01
      0000D0 75 18 00         [24]  239 	mov	(_main_estados_65536_5 + 0x0010),#0x00
      0000D3 75 19 00         [24]  240 	mov	(_main_estados_65536_5 + 0x0011),#0x00
      0000D6 75 1A 00         [24]  241 	mov	(_main_estados_65536_5 + 0x0012),#0x00
      0000D9 75 1B 01         [24]  242 	mov	(_main_estados_65536_5 + 0x0013),#0x01
                                    243 ;	blink.c:35: TRISC0 = 0;
      0000DC 78 00            [12]  244 	mov	r0,#_TRISCbits
      0000DE E6               [12]  245 	mov	a,@r0
      0000DF 54 FE            [12]  246 	anl	a,#0xfe
      0000E1 F6               [12]  247 	mov	@r0,a
                                    248 ;	blink.c:36: TRISC1 = 0;
      0000E2 78 00            [12]  249 	mov	r0,#_TRISCbits
      0000E4 E6               [12]  250 	mov	a,@r0
      0000E5 54 FD            [12]  251 	anl	a,#0xfd
      0000E7 F6               [12]  252 	mov	@r0,a
                                    253 ;	blink.c:37: TRISC2 = 0;
      0000E8 78 00            [12]  254 	mov	r0,#_TRISCbits
      0000EA E6               [12]  255 	mov	a,@r0
      0000EB 54 FB            [12]  256 	anl	a,#0xfb
      0000ED F6               [12]  257 	mov	@r0,a
                                    258 ;	blink.c:38: TRISC3 = 0;
      0000EE 78 00            [12]  259 	mov	r0,#_TRISCbits
      0000F0 E6               [12]  260 	mov	a,@r0
      0000F1 54 F7            [12]  261 	anl	a,#0xf7
      0000F3 F6               [12]  262 	mov	@r0,a
                                    263 ;	blink.c:39: TRISA3 = 1;
      0000F4 78 00            [12]  264 	mov	r0,#_TRISAbits
      0000F6 E6               [12]  265 	mov	a,@r0
      0000F7 44 08            [12]  266 	orl	a,#0x08
      0000F9 F6               [12]  267 	mov	@r0,a
                                    268 ;	blink.c:41: ANSEL = 0;
      0000FA 75 00 00         [24]  269 	mov	_ANSEL,#0x00
                                    270 ;	blink.c:42: ANSELH = 0;
      0000FD 75 00 00         [24]  271 	mov	_ANSELH,#0x00
                                    272 ;	blink.c:44: while(!ANSEL) {
      000100                        273 00103$:
      000100 E5 00            [12]  274 	mov	a,_ANSEL
      000102 60 03            [24]  275 	jz	00138$
      000104 02 01 AD         [24]  276 	ljmp	00105$
      000107                        277 00138$:
                                    278 ;	blink.c:46: for (j=0;j<5;j++) {
      000107 7E 00            [12]  279 	mov	r6,#0x00
      000109 7F 00            [12]  280 	mov	r7,#0x00
      00010B                        281 00106$:
                                    282 ;	blink.c:47: setleds(estados[j][0],estados[j][1],estados[j][2],estados[j][3]);
      00010B EE               [12]  283 	mov	a,r6
      00010C 2E               [12]  284 	add	a,r6
      00010D FC               [12]  285 	mov	r4,a
      00010E EF               [12]  286 	mov	a,r7
      00010F 33               [12]  287 	rlc	a
      000110 FD               [12]  288 	mov	r5,a
      000111 EC               [12]  289 	mov	a,r4
      000112 2C               [12]  290 	add	a,r4
      000113 FC               [12]  291 	mov	r4,a
      000114 ED               [12]  292 	mov	a,r5
      000115 33               [12]  293 	rlc	a
      000116 EC               [12]  294 	mov	a,r4
      000117 24 08            [12]  295 	add	a,#_main_estados_65536_5
      000119 F9               [12]  296 	mov	r1,a
      00011A 87 05            [24]  297 	mov	ar5,@r1
      00011C 7C 00            [12]  298 	mov	r4,#0x00
      00011E E9               [12]  299 	mov	a,r1
      00011F 04               [12]  300 	inc	a
      000120 F8               [12]  301 	mov	r0,a
      000121 86 03            [24]  302 	mov	ar3,@r0
      000123 8B 1C            [24]  303 	mov	_setleds_PARM_2,r3
                                    304 ;	1-genFromRTrack replaced	mov	(_setleds_PARM_2 + 1),#0x00
      000125 8C 1D            [24]  305 	mov	(_setleds_PARM_2 + 1),r4
      000127 74 02            [12]  306 	mov	a,#0x02
      000129 29               [12]  307 	add	a,r1
      00012A F8               [12]  308 	mov	r0,a
      00012B 86 03            [24]  309 	mov	ar3,@r0
      00012D 8B 1E            [24]  310 	mov	_setleds_PARM_3,r3
                                    311 ;	1-genFromRTrack replaced	mov	(_setleds_PARM_3 + 1),#0x00
      00012F 8C 1F            [24]  312 	mov	(_setleds_PARM_3 + 1),r4
      000131 09               [12]  313 	inc	r1
      000132 09               [12]  314 	inc	r1
      000133 09               [12]  315 	inc	r1
      000134 87 03            [24]  316 	mov	ar3,@r1
      000136 8B 20            [24]  317 	mov	_setleds_PARM_4,r3
                                    318 ;	1-genFromRTrack replaced	mov	(_setleds_PARM_4 + 1),#0x00
      000138 8C 21            [24]  319 	mov	(_setleds_PARM_4 + 1),r4
      00013A 8D 82            [24]  320 	mov	dpl,r5
      00013C 8C 83            [24]  321 	mov	dph,r4
      00013E C0 07            [24]  322 	push	ar7
      000140 C0 06            [24]  323 	push	ar6
      000142 12 00 77         [24]  324 	lcall	_setleds
                                    325 ;	blink.c:48: delay();
      000145 12 00 62         [24]  326 	lcall	_delay
      000148 D0 06            [24]  327 	pop	ar6
      00014A D0 07            [24]  328 	pop	ar7
                                    329 ;	blink.c:46: for (j=0;j<5;j++) {
      00014C 0E               [12]  330 	inc	r6
      00014D BE 00 01         [24]  331 	cjne	r6,#0x00,00139$
      000150 0F               [12]  332 	inc	r7
      000151                        333 00139$:
      000151 C3               [12]  334 	clr	c
      000152 EE               [12]  335 	mov	a,r6
      000153 94 05            [12]  336 	subb	a,#0x05
      000155 EF               [12]  337 	mov	a,r7
      000156 64 80            [12]  338 	xrl	a,#0x80
      000158 94 80            [12]  339 	subb	a,#0x80
      00015A 40 AF            [24]  340 	jc	00106$
                                    341 ;	blink.c:51: for (j=4;j>=0;j--) {
      00015C 7E 04            [12]  342 	mov	r6,#0x04
      00015E 7F 00            [12]  343 	mov	r7,#0x00
      000160                        344 00108$:
                                    345 ;	blink.c:52: setleds(estados[j][0],estados[j][1],estados[j][2],estados[j][3]);
      000160 EE               [12]  346 	mov	a,r6
      000161 2E               [12]  347 	add	a,r6
      000162 FC               [12]  348 	mov	r4,a
      000163 EF               [12]  349 	mov	a,r7
      000164 33               [12]  350 	rlc	a
      000165 FD               [12]  351 	mov	r5,a
      000166 EC               [12]  352 	mov	a,r4
      000167 2C               [12]  353 	add	a,r4
      000168 FC               [12]  354 	mov	r4,a
      000169 ED               [12]  355 	mov	a,r5
      00016A 33               [12]  356 	rlc	a
      00016B EC               [12]  357 	mov	a,r4
      00016C 24 08            [12]  358 	add	a,#_main_estados_65536_5
      00016E F9               [12]  359 	mov	r1,a
      00016F 87 05            [24]  360 	mov	ar5,@r1
      000171 7C 00            [12]  361 	mov	r4,#0x00
      000173 E9               [12]  362 	mov	a,r1
      000174 04               [12]  363 	inc	a
      000175 F8               [12]  364 	mov	r0,a
      000176 86 03            [24]  365 	mov	ar3,@r0
      000178 8B 1C            [24]  366 	mov	_setleds_PARM_2,r3
                                    367 ;	1-genFromRTrack replaced	mov	(_setleds_PARM_2 + 1),#0x00
      00017A 8C 1D            [24]  368 	mov	(_setleds_PARM_2 + 1),r4
      00017C 74 02            [12]  369 	mov	a,#0x02
      00017E 29               [12]  370 	add	a,r1
      00017F F8               [12]  371 	mov	r0,a
      000180 86 03            [24]  372 	mov	ar3,@r0
      000182 8B 1E            [24]  373 	mov	_setleds_PARM_3,r3
                                    374 ;	1-genFromRTrack replaced	mov	(_setleds_PARM_3 + 1),#0x00
      000184 8C 1F            [24]  375 	mov	(_setleds_PARM_3 + 1),r4
      000186 09               [12]  376 	inc	r1
      000187 09               [12]  377 	inc	r1
      000188 09               [12]  378 	inc	r1
      000189 87 03            [24]  379 	mov	ar3,@r1
      00018B 8B 20            [24]  380 	mov	_setleds_PARM_4,r3
                                    381 ;	1-genFromRTrack replaced	mov	(_setleds_PARM_4 + 1),#0x00
      00018D 8C 21            [24]  382 	mov	(_setleds_PARM_4 + 1),r4
      00018F 8D 82            [24]  383 	mov	dpl,r5
      000191 8C 83            [24]  384 	mov	dph,r4
      000193 C0 07            [24]  385 	push	ar7
      000195 C0 06            [24]  386 	push	ar6
      000197 12 00 77         [24]  387 	lcall	_setleds
                                    388 ;	blink.c:53: delay();
      00019A 12 00 62         [24]  389 	lcall	_delay
      00019D D0 06            [24]  390 	pop	ar6
      00019F D0 07            [24]  391 	pop	ar7
                                    392 ;	blink.c:51: for (j=4;j>=0;j--) {
      0001A1 1E               [12]  393 	dec	r6
      0001A2 BE FF 01         [24]  394 	cjne	r6,#0xff,00141$
      0001A5 1F               [12]  395 	dec	r7
      0001A6                        396 00141$:
      0001A6 EF               [12]  397 	mov	a,r7
      0001A7 30 E7 B6         [24]  398 	jnb	acc.7,00108$
      0001AA 02 01 00         [24]  399 	ljmp	00103$
      0001AD                        400 00105$:
                                    401 ;	blink.c:57: return 0;
      0001AD 90 00 00         [24]  402 	mov	dptr,#0x0000
                                    403 ;	blink.c:58: }
      0001B0 22               [24]  404 	ret
                                    405 	.area CSEG    (CODE)
                                    406 	.area CONST   (CODE)
                                    407 	.area XINIT   (CODE)
                                    408 	.area CABS    (ABS,CODE)
      002007                        409 	.org 0x2007
      002007                        410 _configword1:
      002007 D5 30                  411 	.byte #0xd5, #0x30	; 12501
