;  Assembly code generated by mikroVirtualMachine - V. 5.0.0.3
;  Date/Time: 15/06/2021 05:51:47
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$284C			GOTO	_main
$0078	$	_mul_16x16_u:
$0078	$1303			BCF	STATUS, RP1
$0079	$1283			BCF	STATUS, RP0
;math.ppas,42 :: 		
;math.ppas,44 :: 		
$007A	$01FB			CLRF	STACK_11
;math.ppas,45 :: 		
$007B	$01FA			CLRF	STACK_10
;math.ppas,46 :: 		
$007C	$01F9			CLRF	STACK_9
;math.ppas,47 :: 		
$007D	$3080			MOVLW	128
;math.ppas,48 :: 		
$007E	$00F8			MOVWF	STACK_8
;math.ppas,49 :: 		
$007F	$0CF1			RRF	STACK_1, F
;math.ppas,50 :: 		
$0080	$0CF0			RRF	STACK_0, F
;math.ppas,51 :: 		
$0081	$1C03			BTFSS	STATUS, C
;math.ppas,52 :: 		
$0082	$288C			GOTO	$+10
;math.ppas,53 :: 		
$0083	$0874			MOVF	STACK_4, W
;math.ppas,54 :: 		
$0084	$07F9			ADDWF	STACK_9, F
;math.ppas,55 :: 		
$0085	$0875			MOVF	STACK_5, W
;math.ppas,56 :: 		
$0086	$1803			BTFSC	STATUS, C
;math.ppas,57 :: 		
$0087	$0F75			INCFSZ	STACK_5, W
;math.ppas,58 :: 		
$0088	$07FA			ADDWF	STACK_10, F
;math.ppas,59 :: 		
$0089	$1803			BTFSC	STATUS, C
;math.ppas,60 :: 		
$008A	$0AFB			INCF	STACK_11, F
;math.ppas,61 :: 		
$008B	$1003			BCF	STATUS, C
;math.ppas,62 :: 		
$008C	$1FF0			BTFSS	STACK_0, 7
;math.ppas,63 :: 		
$008D	$2894			GOTO	$+7
;math.ppas,64 :: 		
$008E	$0874			MOVF	STACK_4, W
;math.ppas,65 :: 		
$008F	$07FA			ADDWF	STACK_10, F
;math.ppas,66 :: 		
$0090	$0875			MOVF	STACK_5, W
;math.ppas,67 :: 		
$0091	$1803			BTFSC	STATUS, C
;math.ppas,68 :: 		
$0092	$0F75			INCFSZ	STACK_5, W
;math.ppas,69 :: 		
$0093	$07FB			ADDWF	STACK_11, F
;math.ppas,70 :: 		
$0094	$0CFB			RRF	STACK_11, F
;math.ppas,71 :: 		
$0095	$0CFA			RRF	STACK_10, F
;math.ppas,72 :: 		
$0096	$0CF9			RRF	STACK_9, F
;math.ppas,73 :: 		
$0097	$0CF8			RRF	STACK_8, F
;math.ppas,74 :: 		
$0098	$1C03			BTFSS	STATUS, C
;math.ppas,75 :: 		
$0099	$287F			GOTO	$-26
;math.ppas,76 :: 		
$009A	$087B			MOVF	STACK_11, W
;math.ppas,77 :: 		
$009B	$00F3			MOVWF	STACK_3
;math.ppas,78 :: 		
$009C	$087A			MOVF	STACK_10, W
;math.ppas,79 :: 		
$009D	$00F2			MOVWF	STACK_2
;math.ppas,80 :: 		
$009E	$0879			MOVF	STACK_9, W
;math.ppas,81 :: 		
$009F	$00F1			MOVWF	STACK_1
;math.ppas,82 :: 		
$00A0	$0878			MOVF	STACK_8, W
;math.ppas,83 :: 		
$00A1	$00F0			MOVWF	STACK_0
;math.ppas,84 :: 		
$00A2	$	math_L_1:
;math.ppas,85 :: 		
$00A2	$0008			RETURN
$0004	$	_pwm_change_duty:
;PWM_c21.ppas,18 :: 		
;PWM_c21.ppas,19 :: 		
$0004	$1303			BCF	STATUS, RP1
$0005	$1683			BSF	STATUS, RP0
$0006	$0812			MOVF	PR2, 0
$0007	$00F0			MOVWF	STACK_0
$0008	$01F1			CLRF	STACK_0+1
$0009	$0870			MOVF	STACK_0, 0
$000A	$3F01			ADDLW	1
$000B	$00F4			MOVWF	STACK_4
$000C	$3000			MOVLW	0
$000D	$1803			BTFSC	STATUS, C
$000E	$3F01			ADDLW	1
$000F	$0771			ADDWF	STACK_0+1, 0
$0010	$00F5			MOVWF	STACK_4+1
$0011	$1283			BCF	STATUS, RP0
$0012	$0820			MOVF	FARG_PWM_Change_Duty, 0
$0013	$00F0			MOVWF	STACK_0
$0014	$01F1			CLRF	STACK_0+1
$0015	$2078			CALL	_mul_16x16_u
$0016	$3006			MOVLW	6
$0017	$00F2			MOVWF	STACK_2
$0018	$0870			MOVF	STACK_0, 0
$0019	$00F8			MOVWF	STACK_8
$001A	$0871			MOVF	STACK_0+1, 0
$001B	$00F9			MOVWF	STACK_8+1
$001C	$0872			MOVF	STACK_2, 0
$001D	$	L_PWM_Change_Duty_0:
$001D	$1903			BTFSC	STATUS, Z
$001E	$2824			GOTO	L_PWM_Change_Duty_1
$001F	$0CF9			RRF	STACK_8+1, 1
$0020	$0CF8			RRF	STACK_8, 1
$0021	$13F9			BCF	STACK_8+1, 7
$0022	$3FFF			ADDLW	255
$0023	$281D			GOTO	L_PWM_Change_Duty_0
$0024	$	L_PWM_Change_Duty_1:
;PWM_c21.ppas,20 :: 		
$0024	$0878			MOVF	STACK_8, 0
$0025	$00F0			MOVWF	STACK_0
$0026	$0879			MOVF	STACK_8+1, 0
$0027	$00F1			MOVWF	STACK_0+1
$0028	$0DF0			RLF	STACK_0, 1
$0029	$0DF1			RLF	STACK_0+1, 1
$002A	$1070			BCF	STACK_0, 0
$002B	$0DF0			RLF	STACK_0, 1
$002C	$0DF1			RLF	STACK_0+1, 1
$002D	$1070			BCF	STACK_0, 0
$002E	$0DF0			RLF	STACK_0, 1
$002F	$0DF1			RLF	STACK_0+1, 1
$0030	$1070			BCF	STACK_0, 0
$0031	$0DF0			RLF	STACK_0, 1
$0032	$0DF1			RLF	STACK_0+1, 1
$0033	$1070			BCF	STACK_0, 0
$0034	$3030			MOVLW	48
$0035	$0570			ANDWF	STACK_0, 0
$0036	$00F6			MOVWF	STACK_6
$0037	$0871			MOVF	STACK_0+1, 0
$0038	$00F7			MOVWF	STACK_6+1
$0039	$3000			MOVLW	0
$003A	$05F7			ANDWF	STACK_6+1, 1
;PWM_c21.ppas,21 :: 		
$003B	$0878			MOVF	STACK_8, 0
$003C	$00F0			MOVWF	STACK_0
$003D	$0879			MOVF	STACK_8+1, 0
$003E	$00F1			MOVWF	STACK_0+1
$003F	$0CF1			RRF	STACK_0+1, 1
$0040	$0CF0			RRF	STACK_0, 1
$0041	$13F1			BCF	STACK_0+1, 7
$0042	$0CF1			RRF	STACK_0+1, 1
$0043	$0CF0			RRF	STACK_0, 1
$0044	$13F1			BCF	STACK_0+1, 7
$0045	$0870			MOVF	STACK_0, 0
$0046	$0095			MOVWF	CCPR1L
;PWM_c21.ppas,22 :: 		
$0047	$300F			MOVLW	15
$0048	$0597			ANDWF	CCP1CON, 1
;PWM_c21.ppas,23 :: 		
$0049	$0876			MOVF	STACK_6, 0
$004A	$0497			IORWF	CCP1CON, 1
$004B	$	PWM_c21_L_1:
;PWM_c21.ppas,24 :: 		
$004B	$0008			RETURN
$00A3	$	_pwm_start:
;PWM_c21.ppas,27 :: 		
;PWM_c21.ppas,28 :: 		
$00A3	$1303			BCF	STATUS, RP1
$00A4	$1683			BSF	STATUS, RP0
$00A5	$1107			BCF	TRISC, 2
;PWM_c21.ppas,29 :: 		
$00A6	$1283			BCF	STATUS, RP0
$00A7	$1512			BSF	T2CON, 2
;PWM_c21.ppas,30 :: 		
$00A8	$300C			MOVLW	12
$00A9	$0497			IORWF	CCP1CON, 1
$00AA	$	PWM_c21_L_2:
;PWM_c21.ppas,31 :: 		
$00AA	$0008			RETURN
$00AB	$	_pwm_init:
;PWM_c21.ppas,9 :: 		
;PWM_c21.ppas,10 :: 		
$00AB	$1303			BCF	STATUS, RP1
$00AC	$1283			BCF	STATUS, RP0
$00AD	$0195			CLRF	CCPR1L, 1
;PWM_c21.ppas,11 :: 		
$00AE	$1217			BCF	CCP1CON, 4
;PWM_c21.ppas,12 :: 		
$00AF	$1297			BCF	CCP1CON, 5
$00B0	$	PWM_c21_L_0:
;PWM_c21.ppas,13 :: 		
$00B0	$0008			RETURN
$004C	$	_main:
;pwm.ppas,3 :: 		begin
;pwm.ppas,4 :: 		TRISB := 0;
$004C	$1303			BCF	STATUS, RP1
$004D	$1683			BSF	STATUS, RP0
$004E	$0186			CLRF	TRISB, 1
;pwm.ppas,5 :: 		TRISC := $FF;
$004F	$30FF			MOVLW	255
$0050	$0087			MOVWF	TRISC
;pwm.ppas,7 :: 		Pwm_Init(5000);
$0051	$1283			BCF	STATUS, RP0
$0052	$1012			BCF	T2CON, T2CKPS0
$0053	$1092			BCF	T2CON, T2CKPS1
$0054	$1412			BSF	T2CON, T2CKPS0
$0055	$3063			MOVLW	99
$0056	$1683			BSF	STATUS, RP0
$0057	$0092			MOVWF	PR2
$0058	$20AB			CALL	_pwm_init
;pwm.ppas,8 :: 		Pwm_Change_Duty(127);
$0059	$307F			MOVLW	127
$005A	$00A0			MOVWF	FARG_PWM_Change_Duty
$005B	$2004			CALL	_pwm_change_duty
;pwm.ppas,9 :: 		Pwm_Start();
$005C	$20A3			CALL	_pwm_start
;pwm.ppas,10 :: 		while true do
$005D	$	pwm_L_2:
;pwm.ppas,13 :: 		if(PORTB.1=0)then
$005D	$0806			MOVF	PORTB, 0
$005E	$00F1			MOVWF	STACK_1
$005F	$3000			MOVLW	0
$0060	$18F1			BTFSC	STACK_1, 1
$0061	$3001			MOVLW	1
$0062	$00F1			MOVWF	STACK_1
$0063	$0871			MOVF	STACK_1, 0
$0064	$3A00			XORLW	0
$0065	$1D03			BTFSS	STATUS, Z
$0066	$286A			GOTO	pwm_L_7
$0067	$	pwm_L_6:
;pwm.ppas,14 :: 		Pwm_Change_Duty(25);
$0067	$3019			MOVLW	25
$0068	$00A0			MOVWF	FARG_PWM_Change_Duty
$0069	$2004			CALL	_pwm_change_duty
$006A	$	pwm_L_7:
$006A	$	pwm_L_8:
;pwm.ppas,15 :: 		if(PORTB.2=0)then
$006A	$0806			MOVF	PORTB, 0
$006B	$00F1			MOVWF	STACK_1
$006C	$3000			MOVLW	0
$006D	$1971			BTFSC	STACK_1, 2
$006E	$3001			MOVLW	1
$006F	$00F1			MOVWF	STACK_1
$0070	$0871			MOVF	STACK_1, 0
$0071	$3A00			XORLW	0
$0072	$1D03			BTFSS	STATUS, Z
$0073	$2876			GOTO	pwm_L_10
$0074	$	pwm_L_9:
;pwm.ppas,16 :: 		Pwm_Change_Duty(0);
$0074	$01A0			CLRF	FARG_PWM_Change_Duty, 1
$0075	$2004			CALL	_pwm_change_duty
$0076	$	pwm_L_10:
$0076	$	pwm_L_11:
;pwm.ppas,18 :: 		end;
$0076	$285D			GOTO	pwm_L_2
;pwm.ppas,19 :: 		end.
$0077	$2877			GOTO	$
