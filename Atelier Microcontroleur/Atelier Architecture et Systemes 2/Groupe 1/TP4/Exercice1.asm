;  Assembly code generated by mikroVirtualMachine - V. 5.0.0.3
;  Date/Time: 4/5/2021 2:45:05 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$29CA			GOTO	_main
$0328	$	_delay_1us:
;delays.ppas,11 :: 		begin
;delays.ppas,12 :: 		Delay_us(1);
$0328	$0000			NOP
$0329	$0000			NOP
$032A	$	delays_L_1:
;delays.ppas,13 :: 		end;
$032A	$0008			RETURN
$02F1	$	_delay_5500us:
;delays.ppas,41 :: 		begin
;delays.ppas,42 :: 		Delay_us(5500);
$02F1	$300F			MOVLW	15
$02F2	$1303			BCF	STATUS, RP1
$02F3	$1283			BCF	STATUS, RP0
$02F4	$00FB			MOVWF	STACK_11
$02F5	$30FF			MOVLW	255
$02F6	$00FA			MOVWF	STACK_10
$02F7	$0BFB			DECFSZ	STACK_11, F
$02F8	$2AFA			GOTO	$+2
$02F9	$2AFD			GOTO	$+4
$02FA	$0BFA			DECFSZ	STACK_10, F
$02FB	$2AFA			GOTO	$-1
$02FC	$2AF7			GOTO	$-5
$02FD	$303E			MOVLW	62
$02FE	$00FA			MOVWF	STACK_10
$02FF	$0BFA			DECFSZ	STACK_10, F
$0300	$2AFF			GOTO	$-1
$0301	$0000			NOP
$0302	$	delays_L_7:
;delays.ppas,43 :: 		end;
$0302	$0008			RETURN
$031C	$	_delay_50us:
;delays.ppas,26 :: 		begin
;delays.ppas,27 :: 		Delay_us(50);
$031C	$3021			MOVLW	33
$031D	$1303			BCF	STATUS, RP1
$031E	$1283			BCF	STATUS, RP0
$031F	$00FA			MOVWF	STACK_10
$0320	$0BFA			DECFSZ	STACK_10, F
$0321	$2B20			GOTO	$-1
$0322	$	delays_L_4:
;delays.ppas,28 :: 		end;
$0322	$0008			RETURN
$0123	$	_lcd_cmd:
;lcd.ppas,19 :: 		
;lcd.ppas,20 :: 		
$0123	$1303			BCF	STATUS, RP1
$0124	$1283			BCF	STATUS, RP0
$0125	$0820			MOVF	lcd_ctrlport_address, 0
$0126	$0084			MOVWF	FSR
;lcd.ppas,22 :: 		
$0127	$0921			COMF	lcd____menable, W
$0128	$00F0			MOVWF	STACK_0
$0129	$0870			MOVF	STACK_0, 0
$012A	$0580			ANDWF	INDF, 1
;lcd.ppas,23 :: 		
$012B	$0922			COMF	lcd____mrs, W
$012C	$00F0			MOVWF	STACK_0
$012D	$0870			MOVF	STACK_0, 0
$012E	$0580			ANDWF	INDF, 1
;lcd.ppas,25 :: 		
$012F	$0823			MOVF	lcd_dataport_address, 0
$0130	$0084			MOVWF	FSR
;lcd.ppas,26 :: 		
$0131	$0825			MOVF	lcd____mdb6, 0
$0132	$0424			IORWF	lcd____mdb7, 0
$0133	$00F0			MOVWF	STACK_0
$0134	$0826			MOVF	lcd____mdb5, 0
$0135	$04F0			IORWF	STACK_0, 1
$0136	$0827			MOVF	lcd____mdb4, 0
$0137	$04F0			IORWF	STACK_0, 1
$0138	$09F0			COMF	STACK_0, F
$0139	$0870			MOVF	STACK_0, 0
$013A	$0580			ANDWF	INDF, 1
;lcd.ppas,28 :: 		
$013B	$3000			MOVLW	0
$013C	$1BCC			BTFSC	FARG_Lcd_Cmd, 7
$013D	$3001			MOVLW	1
$013E	$00F1			MOVWF	STACK_1
$013F	$0871			MOVF	STACK_1, 0
$0140	$3A01			XORLW	1
$0141	$1D03			BTFSS	STATUS, Z
$0142	$2945			GOTO	lcd_L_2
$0143	$	lcd_L_1:
;lcd.ppas,29 :: 		
$0143	$0824			MOVF	lcd____mdb7, 0
$0144	$0480			IORWF	INDF, 1
$0145	$	lcd_L_2:
$0145	$	lcd_L_3:
;lcd.ppas,30 :: 		
$0145	$3000			MOVLW	0
$0146	$1B4C			BTFSC	FARG_Lcd_Cmd, 6
$0147	$3001			MOVLW	1
$0148	$00F1			MOVWF	STACK_1
$0149	$0871			MOVF	STACK_1, 0
$014A	$3A01			XORLW	1
$014B	$1D03			BTFSS	STATUS, Z
$014C	$294F			GOTO	lcd_L_5
$014D	$	lcd_L_4:
;lcd.ppas,31 :: 		
$014D	$0825			MOVF	lcd____mdb6, 0
$014E	$0480			IORWF	INDF, 1
$014F	$	lcd_L_5:
$014F	$	lcd_L_6:
;lcd.ppas,32 :: 		
$014F	$3000			MOVLW	0
$0150	$1ACC			BTFSC	FARG_Lcd_Cmd, 5
$0151	$3001			MOVLW	1
$0152	$00F1			MOVWF	STACK_1
$0153	$0871			MOVF	STACK_1, 0
$0154	$3A01			XORLW	1
$0155	$1D03			BTFSS	STATUS, Z
$0156	$2959			GOTO	lcd_L_8
$0157	$	lcd_L_7:
;lcd.ppas,33 :: 		
$0157	$0826			MOVF	lcd____mdb5, 0
$0158	$0480			IORWF	INDF, 1
$0159	$	lcd_L_8:
$0159	$	lcd_L_9:
;lcd.ppas,34 :: 		
$0159	$3000			MOVLW	0
$015A	$1A4C			BTFSC	FARG_Lcd_Cmd, 4
$015B	$3001			MOVLW	1
$015C	$00F1			MOVWF	STACK_1
$015D	$0871			MOVF	STACK_1, 0
$015E	$3A01			XORLW	1
$015F	$1D03			BTFSS	STATUS, Z
$0160	$2963			GOTO	lcd_L_11
$0161	$	lcd_L_10:
;lcd.ppas,35 :: 		
$0161	$0827			MOVF	lcd____mdb4, 0
$0162	$0480			IORWF	INDF, 1
$0163	$	lcd_L_11:
$0163	$	lcd_L_12:
;lcd.ppas,37 :: 		
$0163	$0820			MOVF	lcd_ctrlport_address, 0
$0164	$0084			MOVWF	FSR
;lcd.ppas,38 :: 		
$0165	$0828			MOVF	lcd_lcdcmd_status, 0
$0166	$3A01			XORLW	1
$0167	$1D03			BTFSS	STATUS, Z
$0168	$296E			GOTO	lcd_L_14
$0169	$	lcd_L_13:
;lcd.ppas,39 :: 		
$0169	$0922			COMF	lcd____mrs, W
$016A	$00F0			MOVWF	STACK_0
$016B	$0870			MOVF	STACK_0, 0
$016C	$0580			ANDWF	INDF, 1
$016D	$2970			GOTO	lcd_L_15
;lcd.ppas,40 :: 		
$016E	$	lcd_L_14:
;lcd.ppas,41 :: 		
$016E	$0822			MOVF	lcd____mrs, 0
$016F	$0480			IORWF	INDF, 1
$0170	$	lcd_L_15:
;lcd.ppas,43 :: 		
$0170	$0821			MOVF	lcd____menable, 0
$0171	$0480			IORWF	INDF, 1
;lcd.ppas,44 :: 		
$0172	$2328			CALL	_delay_1us
;lcd.ppas,45 :: 		
$0173	$0921			COMF	lcd____menable, W
$0174	$00F0			MOVWF	STACK_0
$0175	$0870			MOVF	STACK_0, 0
$0176	$0580			ANDWF	INDF, 1
;lcd.ppas,47 :: 		
$0177	$0922			COMF	lcd____mrs, W
$0178	$00F0			MOVWF	STACK_0
$0179	$0870			MOVF	STACK_0, 0
$017A	$0580			ANDWF	INDF, 1
;lcd.ppas,49 :: 		
$017B	$0823			MOVF	lcd_dataport_address, 0
$017C	$0084			MOVWF	FSR
;lcd.ppas,50 :: 		
$017D	$0825			MOVF	lcd____mdb6, 0
$017E	$0424			IORWF	lcd____mdb7, 0
$017F	$00F0			MOVWF	STACK_0
$0180	$0826			MOVF	lcd____mdb5, 0
$0181	$04F0			IORWF	STACK_0, 1
$0182	$0827			MOVF	lcd____mdb4, 0
$0183	$04F0			IORWF	STACK_0, 1
$0184	$09F0			COMF	STACK_0, F
$0185	$0870			MOVF	STACK_0, 0
$0186	$0580			ANDWF	INDF, 1
;lcd.ppas,52 :: 		
$0187	$3000			MOVLW	0
$0188	$19CC			BTFSC	FARG_Lcd_Cmd, 3
$0189	$3001			MOVLW	1
$018A	$00F1			MOVWF	STACK_1
$018B	$0871			MOVF	STACK_1, 0
$018C	$3A01			XORLW	1
$018D	$1D03			BTFSS	STATUS, Z
$018E	$2991			GOTO	lcd_L_17
$018F	$	lcd_L_16:
;lcd.ppas,53 :: 		
$018F	$0824			MOVF	lcd____mdb7, 0
$0190	$0480			IORWF	INDF, 1
$0191	$	lcd_L_17:
$0191	$	lcd_L_18:
;lcd.ppas,54 :: 		
$0191	$3000			MOVLW	0
$0192	$194C			BTFSC	FARG_Lcd_Cmd, 2
$0193	$3001			MOVLW	1
$0194	$00F1			MOVWF	STACK_1
$0195	$0871			MOVF	STACK_1, 0
$0196	$3A01			XORLW	1
$0197	$1D03			BTFSS	STATUS, Z
$0198	$299B			GOTO	lcd_L_20
$0199	$	lcd_L_19:
;lcd.ppas,55 :: 		
$0199	$0825			MOVF	lcd____mdb6, 0
$019A	$0480			IORWF	INDF, 1
$019B	$	lcd_L_20:
$019B	$	lcd_L_21:
;lcd.ppas,56 :: 		
$019B	$3000			MOVLW	0
$019C	$18CC			BTFSC	FARG_Lcd_Cmd, 1
$019D	$3001			MOVLW	1
$019E	$00F1			MOVWF	STACK_1
$019F	$0871			MOVF	STACK_1, 0
$01A0	$3A01			XORLW	1
$01A1	$1D03			BTFSS	STATUS, Z
$01A2	$29A5			GOTO	lcd_L_23
$01A3	$	lcd_L_22:
;lcd.ppas,57 :: 		
$01A3	$0826			MOVF	lcd____mdb5, 0
$01A4	$0480			IORWF	INDF, 1
$01A5	$	lcd_L_23:
$01A5	$	lcd_L_24:
;lcd.ppas,58 :: 		
$01A5	$3001			MOVLW	1
$01A6	$054C			ANDWF	FARG_Lcd_Cmd, 0
$01A7	$00F1			MOVWF	STACK_1
$01A8	$0871			MOVF	STACK_1, 0
$01A9	$3A01			XORLW	1
$01AA	$1D03			BTFSS	STATUS, Z
$01AB	$29AE			GOTO	lcd_L_26
$01AC	$	lcd_L_25:
;lcd.ppas,59 :: 		
$01AC	$0827			MOVF	lcd____mdb4, 0
$01AD	$0480			IORWF	INDF, 1
$01AE	$	lcd_L_26:
$01AE	$	lcd_L_27:
;lcd.ppas,61 :: 		
$01AE	$0820			MOVF	lcd_ctrlport_address, 0
$01AF	$0084			MOVWF	FSR
;lcd.ppas,62 :: 		
$01B0	$0828			MOVF	lcd_lcdcmd_status, 0
$01B1	$3A01			XORLW	1
$01B2	$1D03			BTFSS	STATUS, Z
$01B3	$29B9			GOTO	lcd_L_29
$01B4	$	lcd_L_28:
;lcd.ppas,63 :: 		
$01B4	$0922			COMF	lcd____mrs, W
$01B5	$00F0			MOVWF	STACK_0
$01B6	$0870			MOVF	STACK_0, 0
$01B7	$0580			ANDWF	INDF, 1
$01B8	$29BB			GOTO	lcd_L_30
;lcd.ppas,64 :: 		
$01B9	$	lcd_L_29:
;lcd.ppas,65 :: 		
$01B9	$0822			MOVF	lcd____mrs, 0
$01BA	$0480			IORWF	INDF, 1
$01BB	$	lcd_L_30:
;lcd.ppas,67 :: 		
$01BB	$0821			MOVF	lcd____menable, 0
$01BC	$0480			IORWF	INDF, 1
;lcd.ppas,68 :: 		
$01BD	$2328			CALL	_delay_1us
;lcd.ppas,69 :: 		
$01BE	$0921			COMF	lcd____menable, W
$01BF	$00F0			MOVWF	STACK_0
$01C0	$0870			MOVF	STACK_0, 0
$01C1	$0580			ANDWF	INDF, 1
;lcd.ppas,71 :: 		
$01C2	$0828			MOVF	lcd_lcdcmd_status, 0
$01C3	$3A01			XORLW	1
$01C4	$1D03			BTFSS	STATUS, Z
$01C5	$29C8			GOTO	lcd_L_32
$01C6	$	lcd_L_31:
;lcd.ppas,72 :: 		
$01C6	$22F1			CALL	_delay_5500us
$01C7	$29C9			GOTO	lcd_L_33
;lcd.ppas,73 :: 		
$01C8	$	lcd_L_32:
;lcd.ppas,74 :: 		
$01C8	$231C			CALL	_delay_50us
$01C9	$	lcd_L_33:
$01C9	$	lcd_L_0:
;lcd.ppas,75 :: 		
$01C9	$0008			RETURN
$0004	$	_lcd_config:
;lcd.ppas,115 :: 		
;lcd.ppas,116 :: 		
$0004	$22F1			CALL	_delay_5500us
;lcd.ppas,117 :: 		
$0005	$22F1			CALL	_delay_5500us
;lcd.ppas,118 :: 		
$0006	$22F1			CALL	_delay_5500us
;lcd.ppas,120 :: 		
$0007	$0844			MOVF	FARG_Lcd_Config+1, 0
$0008	$00F0			MOVWF	STACK_0
$0009	$3001			MOVLW	1
$000A	$00F4			MOVWF	STACK_4
$000B	$0870			MOVF	STACK_0, 0
$000C	$	L_Lcd_Config_0:
$000C	$1903			BTFSC	STATUS, Z
$000D	$2812			GOTO	L_Lcd_Config_1
$000E	$0DF4			RLF	STACK_4, 1
$000F	$1074			BCF	STACK_4, 0
$0010	$3FFF			ADDLW	255
$0011	$280C			GOTO	L_Lcd_Config_0
$0012	$	L_Lcd_Config_1:
$0012	$0874			MOVF	STACK_4, 0
$0013	$00A4			MOVWF	lcd____mdb7
;lcd.ppas,121 :: 		
$0014	$0845			MOVF	FARG_Lcd_Config+2, 0
$0015	$00F0			MOVWF	STACK_0
$0016	$3001			MOVLW	1
$0017	$00F3			MOVWF	STACK_3
$0018	$0870			MOVF	STACK_0, 0
$0019	$	L_Lcd_Config_2:
$0019	$1903			BTFSC	STATUS, Z
$001A	$281F			GOTO	L_Lcd_Config_3
$001B	$0DF3			RLF	STACK_3, 1
$001C	$1073			BCF	STACK_3, 0
$001D	$3FFF			ADDLW	255
$001E	$2819			GOTO	L_Lcd_Config_2
$001F	$	L_Lcd_Config_3:
$001F	$0873			MOVF	STACK_3, 0
$0020	$00A5			MOVWF	lcd____mdb6
;lcd.ppas,122 :: 		
$0021	$0846			MOVF	FARG_Lcd_Config+3, 0
$0022	$00F0			MOVWF	STACK_0
$0023	$3001			MOVLW	1
$0024	$00F2			MOVWF	STACK_2
$0025	$0870			MOVF	STACK_0, 0
$0026	$	L_Lcd_Config_4:
$0026	$1903			BTFSC	STATUS, Z
$0027	$282C			GOTO	L_Lcd_Config_5
$0028	$0DF2			RLF	STACK_2, 1
$0029	$1072			BCF	STACK_2, 0
$002A	$3FFF			ADDLW	255
$002B	$2826			GOTO	L_Lcd_Config_4
$002C	$	L_Lcd_Config_5:
$002C	$0872			MOVF	STACK_2, 0
$002D	$00A6			MOVWF	lcd____mdb5
;lcd.ppas,123 :: 		
$002E	$0847			MOVF	FARG_Lcd_Config+4, 0
$002F	$00F0			MOVWF	STACK_0
$0030	$3001			MOVLW	1
$0031	$00F1			MOVWF	STACK_1
$0032	$0870			MOVF	STACK_0, 0
$0033	$	L_Lcd_Config_6:
$0033	$1903			BTFSC	STATUS, Z
$0034	$2839			GOTO	L_Lcd_Config_7
$0035	$0DF1			RLF	STACK_1, 1
$0036	$1071			BCF	STACK_1, 0
$0037	$3FFF			ADDLW	255
$0038	$2833			GOTO	L_Lcd_Config_6
$0039	$	L_Lcd_Config_7:
$0039	$0871			MOVF	STACK_1, 0
$003A	$00A7			MOVWF	lcd____mdb4
;lcd.ppas,124 :: 		
$003B	$0849			MOVF	FARG_Lcd_Config+6, 0
$003C	$00F0			MOVWF	STACK_0
$003D	$3001			MOVLW	1
$003E	$00A2			MOVWF	lcd____mrs
$003F	$0870			MOVF	STACK_0, 0
$0040	$	L_Lcd_Config_8:
$0040	$1903			BTFSC	STATUS, Z
$0041	$2846			GOTO	L_Lcd_Config_9
$0042	$0DA2			RLF	lcd____mrs, 1
$0043	$1022			BCF	lcd____mrs, 0
$0044	$3FFF			ADDLW	255
$0045	$2840			GOTO	L_Lcd_Config_8
$0046	$	L_Lcd_Config_9:
;lcd.ppas,125 :: 		
$0046	$084A			MOVF	FARG_Lcd_Config+7, 0
$0047	$00F0			MOVWF	STACK_0
$0048	$3001			MOVLW	1
$0049	$00A9			MOVWF	lcd____mrw
$004A	$0870			MOVF	STACK_0, 0
$004B	$	L_Lcd_Config_10:
$004B	$1903			BTFSC	STATUS, Z
$004C	$2851			GOTO	L_Lcd_Config_11
$004D	$0DA9			RLF	lcd____mrw, 1
$004E	$1029			BCF	lcd____mrw, 0
$004F	$3FFF			ADDLW	255
$0050	$284B			GOTO	L_Lcd_Config_10
$0051	$	L_Lcd_Config_11:
;lcd.ppas,126 :: 		
$0051	$084B			MOVF	FARG_Lcd_Config+8, 0
$0052	$00F0			MOVWF	STACK_0
$0053	$3001			MOVLW	1
$0054	$00A1			MOVWF	lcd____menable
$0055	$0870			MOVF	STACK_0, 0
$0056	$	L_Lcd_Config_12:
$0056	$1903			BTFSC	STATUS, Z
$0057	$285C			GOTO	L_Lcd_Config_13
$0058	$0DA1			RLF	lcd____menable, 1
$0059	$1021			BCF	lcd____menable, 0
$005A	$3FFF			ADDLW	255
$005B	$2856			GOTO	L_Lcd_Config_12
$005C	$	L_Lcd_Config_13:
;lcd.ppas,128 :: 		
$005C	$0843			MOVF	FARG_Lcd_Config, 0
$005D	$00A3			MOVWF	lcd_dataport_address
;lcd.ppas,129 :: 		
$005E	$0848			MOVF	FARG_Lcd_Config+5, 0
$005F	$00A0			MOVWF	lcd_ctrlport_address
;lcd.ppas,131 :: 		
$0060	$0843			MOVF	FARG_Lcd_Config, 0
$0061	$0084			MOVWF	FSR
;lcd.ppas,133 :: 		
$0062	$0873			MOVF	STACK_3, 0
$0063	$0474			IORWF	STACK_4, 0
$0064	$00F0			MOVWF	STACK_0
$0065	$0872			MOVF	STACK_2, 0
$0066	$04F0			IORWF	STACK_0, 1
$0067	$0871			MOVF	STACK_1, 0
$0068	$04F0			IORWF	STACK_0, 1
$0069	$09F0			COMF	STACK_0, F
$006A	$0870			MOVF	STACK_0, 0
$006B	$0580			ANDWF	INDF, 1
;lcd.ppas,134 :: 		
$006C	$	lcd_L_56:
$006C	$1784			BSF	FSR, 7
$006D	$	lcd_L_57:
;lcd.ppas,135 :: 		
$006D	$0825			MOVF	lcd____mdb6, 0
$006E	$0424			IORWF	lcd____mdb7, 0
$006F	$00F0			MOVWF	STACK_0
$0070	$0826			MOVF	lcd____mdb5, 0
$0071	$04F0			IORWF	STACK_0, 1
$0072	$0827			MOVF	lcd____mdb4, 0
$0073	$04F0			IORWF	STACK_0, 1
$0074	$09F0			COMF	STACK_0, F
$0075	$0870			MOVF	STACK_0, 0
$0076	$0580			ANDWF	INDF, 1
;lcd.ppas,136 :: 		
$0077	$1384			BCF	FSR, 7
$0078	$	lcd_L_59:
;lcd.ppas,139 :: 		
$0078	$0820			MOVF	lcd_ctrlport_address, 0
$0079	$0084			MOVWF	FSR
;lcd.ppas,141 :: 		
$007A	$0829			MOVF	lcd____mrw, 0
$007B	$0422			IORWF	lcd____mrs, 0
$007C	$00F0			MOVWF	STACK_0
$007D	$0821			MOVF	lcd____menable, 0
$007E	$04F0			IORWF	STACK_0, 1
$007F	$09F0			COMF	STACK_0, F
$0080	$0870			MOVF	STACK_0, 0
$0081	$0580			ANDWF	INDF, 1
;lcd.ppas,142 :: 		
$0082	$	lcd_L_60:
$0082	$1784			BSF	FSR, 7
$0083	$	lcd_L_61:
;lcd.ppas,143 :: 		
$0083	$0829			MOVF	lcd____mrw, 0
$0084	$0422			IORWF	lcd____mrs, 0
$0085	$00F0			MOVWF	STACK_0
$0086	$0821			MOVF	lcd____menable, 0
$0087	$04F0			IORWF	STACK_0, 1
$0088	$09F0			COMF	STACK_0, F
$0089	$0870			MOVF	STACK_0, 0
$008A	$0580			ANDWF	INDF, 1
;lcd.ppas,144 :: 		
$008B	$1384			BCF	FSR, 7
$008C	$	lcd_L_63:
;lcd.ppas,148 :: 		
$008C	$0823			MOVF	lcd_dataport_address, 0
$008D	$0084			MOVWF	FSR
;lcd.ppas,149 :: 		
$008E	$0826			MOVF	lcd____mdb5, 0
$008F	$0400			IORWF	INDF, 0
$0090	$00F0			MOVWF	STACK_0
$0091	$0827			MOVF	lcd____mdb4, 0
$0092	$0470			IORWF	STACK_0, 0
$0093	$0080			MOVWF	INDF
;lcd.ppas,151 :: 		
$0094	$0820			MOVF	lcd_ctrlport_address, 0
$0095	$0084			MOVWF	FSR
;lcd.ppas,152 :: 		
$0096	$0821			MOVF	lcd____menable, 0
$0097	$0480			IORWF	INDF, 1
;lcd.ppas,153 :: 		
$0098	$0921			COMF	lcd____menable, W
$0099	$00F0			MOVWF	STACK_0
$009A	$0870			MOVF	STACK_0, 0
$009B	$0580			ANDWF	INDF, 1
;lcd.ppas,155 :: 		
$009C	$22F1			CALL	_delay_5500us
;lcd.ppas,160 :: 		
$009D	$0821			MOVF	lcd____menable, 0
$009E	$0480			IORWF	INDF, 1
;lcd.ppas,161 :: 		
$009F	$0921			COMF	lcd____menable, W
$00A0	$00F0			MOVWF	STACK_0
$00A1	$0870			MOVF	STACK_0, 0
$00A2	$0580			ANDWF	INDF, 1
;lcd.ppas,163 :: 		
$00A3	$22F1			CALL	_delay_5500us
;lcd.ppas,168 :: 		
$00A4	$0821			MOVF	lcd____menable, 0
$00A5	$0480			IORWF	INDF, 1
;lcd.ppas,169 :: 		
$00A6	$0921			COMF	lcd____menable, W
$00A7	$00F0			MOVWF	STACK_0
$00A8	$0870			MOVF	STACK_0, 0
$00A9	$0580			ANDWF	INDF, 1
;lcd.ppas,171 :: 		
$00AA	$22F1			CALL	_delay_5500us
;lcd.ppas,174 :: 		
$00AB	$0823			MOVF	lcd_dataport_address, 0
$00AC	$0084			MOVWF	FSR
;lcd.ppas,175 :: 		
$00AD	$0826			MOVF	lcd____mdb5, 0
$00AE	$0480			IORWF	INDF, 1
;lcd.ppas,176 :: 		
$00AF	$0927			COMF	lcd____mdb4, W
$00B0	$00F0			MOVWF	STACK_0
$00B1	$0870			MOVF	STACK_0, 0
$00B2	$0580			ANDWF	INDF, 1
;lcd.ppas,178 :: 		
$00B3	$0820			MOVF	lcd_ctrlport_address, 0
$00B4	$0084			MOVWF	FSR
;lcd.ppas,179 :: 		
$00B5	$0821			MOVF	lcd____menable, 0
$00B6	$0480			IORWF	INDF, 1
;lcd.ppas,180 :: 		
$00B7	$0921			COMF	lcd____menable, W
$00B8	$00F0			MOVWF	STACK_0
$00B9	$0870			MOVF	STACK_0, 0
$00BA	$0580			ANDWF	INDF, 1
;lcd.ppas,182 :: 		
$00BB	$22F1			CALL	_delay_5500us
;lcd.ppas,187 :: 		
$00BC	$0821			MOVF	lcd____menable, 0
$00BD	$0480			IORWF	INDF, 1
;lcd.ppas,188 :: 		
$00BE	$0921			COMF	lcd____menable, W
$00BF	$00F1			MOVWF	STACK_1
$00C0	$0871			MOVF	STACK_1, 0
$00C1	$0580			ANDWF	INDF, 1
;lcd.ppas,190 :: 		
$00C2	$0823			MOVF	lcd_dataport_address, 0
$00C3	$0084			MOVWF	FSR
;lcd.ppas,191 :: 		
$00C4	$0926			COMF	lcd____mdb5, W
$00C5	$00F0			MOVWF	STACK_0
$00C6	$0870			MOVF	STACK_0, 0
$00C7	$0580			ANDWF	INDF, 1
;lcd.ppas,192 :: 		
$00C8	$0824			MOVF	lcd____mdb7, 0
$00C9	$0480			IORWF	INDF, 1
;lcd.ppas,194 :: 		
$00CA	$0820			MOVF	lcd_ctrlport_address, 0
$00CB	$0084			MOVWF	FSR
;lcd.ppas,195 :: 		
$00CC	$0821			MOVF	lcd____menable, 0
$00CD	$0480			IORWF	INDF, 1
;lcd.ppas,196 :: 		
$00CE	$0871			MOVF	STACK_1, 0
$00CF	$0580			ANDWF	INDF, 1
;lcd.ppas,198 :: 		
$00D0	$22F1			CALL	_delay_5500us
;lcd.ppas,201 :: 		
$00D1	$0823			MOVF	lcd_dataport_address, 0
$00D2	$0084			MOVWF	FSR
;lcd.ppas,202 :: 		
$00D3	$0924			COMF	lcd____mdb7, W
$00D4	$00F0			MOVWF	STACK_0
$00D5	$0870			MOVF	STACK_0, 0
$00D6	$0580			ANDWF	INDF, 1
;lcd.ppas,203 :: 		
$00D7	$0827			MOVF	lcd____mdb4, 0
$00D8	$0480			IORWF	INDF, 1
;lcd.ppas,204 :: 		
$00D9	$0820			MOVF	lcd_ctrlport_address, 0
$00DA	$0084			MOVWF	FSR
;lcd.ppas,205 :: 		
$00DB	$0821			MOVF	lcd____menable, 0
$00DC	$0480			IORWF	INDF, 1
;lcd.ppas,206 :: 		
$00DD	$0921			COMF	lcd____menable, W
$00DE	$00F1			MOVWF	STACK_1
$00DF	$0871			MOVF	STACK_1, 0
$00E0	$0580			ANDWF	INDF, 1
;lcd.ppas,207 :: 		
$00E1	$0823			MOVF	lcd_dataport_address, 0
$00E2	$0084			MOVWF	FSR
;lcd.ppas,208 :: 		
$00E3	$0927			COMF	lcd____mdb4, W
$00E4	$00F0			MOVWF	STACK_0
$00E5	$0870			MOVF	STACK_0, 0
$00E6	$0580			ANDWF	INDF, 1
;lcd.ppas,209 :: 		
$00E7	$0820			MOVF	lcd_ctrlport_address, 0
$00E8	$0084			MOVWF	FSR
;lcd.ppas,210 :: 		
$00E9	$0821			MOVF	lcd____menable, 0
$00EA	$0480			IORWF	INDF, 1
;lcd.ppas,211 :: 		
$00EB	$0871			MOVF	STACK_1, 0
$00EC	$0580			ANDWF	INDF, 1
;lcd.ppas,213 :: 		
$00ED	$22F1			CALL	_delay_5500us
;lcd.ppas,218 :: 		
$00EE	$0821			MOVF	lcd____menable, 0
$00EF	$0480			IORWF	INDF, 1
;lcd.ppas,219 :: 		
$00F0	$0921			COMF	lcd____menable, W
$00F1	$00F0			MOVWF	STACK_0
$00F2	$0870			MOVF	STACK_0, 0
$00F3	$0580			ANDWF	INDF, 1
;lcd.ppas,220 :: 		
$00F4	$0823			MOVF	lcd_dataport_address, 0
$00F5	$0084			MOVWF	FSR
;lcd.ppas,221 :: 		
$00F6	$0827			MOVF	lcd____mdb4, 0
$00F7	$0480			IORWF	INDF, 1
;lcd.ppas,222 :: 		
$00F8	$0820			MOVF	lcd_ctrlport_address, 0
$00F9	$0084			MOVWF	FSR
;lcd.ppas,223 :: 		
$00FA	$0821			MOVF	lcd____menable, 0
$00FB	$0480			IORWF	INDF, 1
;lcd.ppas,224 :: 		
$00FC	$0870			MOVF	STACK_0, 0
$00FD	$0580			ANDWF	INDF, 1
;lcd.ppas,226 :: 		
$00FE	$22F1			CALL	_delay_5500us
;lcd.ppas,229 :: 		
$00FF	$0823			MOVF	lcd_dataport_address, 0
$0100	$0084			MOVWF	FSR
;lcd.ppas,230 :: 		
$0101	$0927			COMF	lcd____mdb4, W
$0102	$00F0			MOVWF	STACK_0
$0103	$0870			MOVF	STACK_0, 0
$0104	$0580			ANDWF	INDF, 1
;lcd.ppas,231 :: 		
$0105	$0820			MOVF	lcd_ctrlport_address, 0
$0106	$0084			MOVWF	FSR
;lcd.ppas,232 :: 		
$0107	$0821			MOVF	lcd____menable, 0
$0108	$0480			IORWF	INDF, 1
;lcd.ppas,233 :: 		
$0109	$0921			COMF	lcd____menable, W
$010A	$00F1			MOVWF	STACK_1
$010B	$0871			MOVF	STACK_1, 0
$010C	$0580			ANDWF	INDF, 1
;lcd.ppas,234 :: 		
$010D	$0823			MOVF	lcd_dataport_address, 0
$010E	$0084			MOVWF	FSR
;lcd.ppas,235 :: 		
$010F	$0827			MOVF	lcd____mdb4, 0
$0110	$0400			IORWF	INDF, 0
$0111	$00F0			MOVWF	STACK_0
$0112	$0826			MOVF	lcd____mdb5, 0
$0113	$04F0			IORWF	STACK_0, 1
$0114	$0825			MOVF	lcd____mdb6, 0
$0115	$04F0			IORWF	STACK_0, 1
$0116	$0824			MOVF	lcd____mdb7, 0
$0117	$0470			IORWF	STACK_0, 0
$0118	$0080			MOVWF	INDF
;lcd.ppas,236 :: 		
$0119	$0820			MOVF	lcd_ctrlport_address, 0
$011A	$0084			MOVWF	FSR
;lcd.ppas,237 :: 		
$011B	$0821			MOVF	lcd____menable, 0
$011C	$0480			IORWF	INDF, 1
;lcd.ppas,238 :: 		
$011D	$0871			MOVF	STACK_1, 0
$011E	$0580			ANDWF	INDF, 1
;lcd.ppas,240 :: 		
$011F	$22F1			CALL	_delay_5500us
;lcd.ppas,242 :: 		
$0120	$3001			MOVLW	1
$0121	$00A8			MOVWF	lcd_lcdcmd_status
$0122	$	lcd_L_55:
;lcd.ppas,243 :: 		
$0122	$0008			RETURN
$0303	$	_lcd_chr_cp:
;lcd.ppas,97 :: 		
;lcd.ppas,98 :: 		
$0303	$1303			BCF	STATUS, RP1
$0304	$1283			BCF	STATUS, RP0
$0305	$01A8			CLRF	lcd_lcdcmd_status, 1
;lcd.ppas,99 :: 		
$0306	$0843			MOVF	FARG_Lcd_Chr_CP, 0
$0307	$00CC			MOVWF	FARG_Lcd_Cmd
$0308	$2123			CALL	_lcd_cmd
;lcd.ppas,100 :: 		
$0309	$3001			MOVLW	1
$030A	$00A8			MOVWF	lcd_lcdcmd_status
$030B	$	lcd_L_48:
;lcd.ppas,101 :: 		
$030B	$0008			RETURN
$0314	$	_delay_10us:
;delays.ppas,16 :: 		begin
;delays.ppas,17 :: 		Delay_us(10);
$0314	$3006			MOVLW	6
$0315	$1303			BCF	STATUS, RP1
$0316	$1283			BCF	STATUS, RP0
$0317	$00FA			MOVWF	STACK_10
$0318	$0BFA			DECFSZ	STACK_10, F
$0319	$2B18			GOTO	$-1
$031A	$0000			NOP
$031B	$	delays_L_2:
;delays.ppas,18 :: 		end;
$031B	$0008			RETURN
$0323	$	_keypad_init:
;keypad_16.ppas,33 :: 		
;keypad_16.ppas,34 :: 		
$0323	$1303			BCF	STATUS, RP1
$0324	$1283			BCF	STATUS, RP0
$0325	$083F			MOVF	FARG_Keypad_Init, 0
$0326	$00AA			MOVWF	_key_pointer
$0327	$	keypad_16_L_0:
;keypad_16.ppas,39 :: 		
$0327	$0008			RETURN
$030C	$	_init:
;Exercice1.ppas,7 :: 		begin
;Exercice1.ppas,8 :: 		TRISB:=$ff;
$030C	$30FF			MOVLW	255
$030D	$1303			BCF	STATUS, RP1
$030E	$1683			BSF	STATUS, RP0
$030F	$0086			MOVWF	TRISB
;Exercice1.ppas,9 :: 		TRISD:=$00;
$0310	$0188			CLRF	TRISD, 1
;Exercice1.ppas,10 :: 		PORTD:=$00;
$0311	$1283			BCF	STATUS, RP0
$0312	$0188			CLRF	PORTD, 1
$0313	$	Exercice1_L_0:
;Exercice1.ppas,11 :: 		end;
$0313	$0008			RETURN
$02DC	$	_lcd_init:
;lcd.ppas,246 :: 		
;lcd.ppas,247 :: 		
$02DC	$1303			BCF	STATUS, RP1
$02DD	$1283			BCF	STATUS, RP0
$02DE	$083F			MOVF	FARG_Lcd_Init, 0
$02DF	$00C3			MOVWF	FARG_Lcd_Config
$02E0	$3007			MOVLW	7
$02E1	$00C4			MOVWF	FARG_Lcd_Config+1
$02E2	$3006			MOVLW	6
$02E3	$00C5			MOVWF	FARG_Lcd_Config+2
$02E4	$3005			MOVLW	5
$02E5	$00C6			MOVWF	FARG_Lcd_Config+3
$02E6	$3004			MOVLW	4
$02E7	$00C7			MOVWF	FARG_Lcd_Config+4
$02E8	$083F			MOVF	FARG_Lcd_Init, 0
$02E9	$00C8			MOVWF	FARG_Lcd_Config+5
$02EA	$3002			MOVLW	2
$02EB	$00C9			MOVWF	FARG_Lcd_Config+6
$02EC	$01CA			CLRF	FARG_Lcd_Config+7, 1
$02ED	$3003			MOVLW	3
$02EE	$00CB			MOVWF	FARG_Lcd_Config+8
$02EF	$2004			CALL	_lcd_config
$02F0	$	lcd_L_64:
;lcd.ppas,248 :: 		
$02F0	$0008			RETURN
$023B	$	_lcd_out:
;lcd.ppas,252 :: 		
;lcd.ppas,254 :: 		
$023B	$	lcd_L_68:
$023B	$1303			BCF	STATUS, RP1
$023C	$1283			BCF	STATUS, RP0
$023D	$083F			MOVF	FARG_Lcd_Out, 0
$023E	$3A01			XORLW	1
$023F	$1D03			BTFSS	STATUS, Z
$0240	$2A44			GOTO	lcd_L_69
$0241	$	lcd_L_67:
$0241	$3080			MOVLW	128
$0242	$00BF			MOVWF	FARG_Lcd_Out
$0243	$2A5B			GOTO	lcd_L_66
$0244	$	lcd_L_69:
;lcd.ppas,255 :: 		
$0244	$	lcd_L_71:
$0244	$083F			MOVF	FARG_Lcd_Out, 0
$0245	$3A02			XORLW	2
$0246	$1D03			BTFSS	STATUS, Z
$0247	$2A4B			GOTO	lcd_L_72
$0248	$	lcd_L_70:
$0248	$30C0			MOVLW	192
$0249	$00BF			MOVWF	FARG_Lcd_Out
$024A	$2A5B			GOTO	lcd_L_66
$024B	$	lcd_L_72:
;lcd.ppas,256 :: 		
$024B	$	lcd_L_74:
$024B	$083F			MOVF	FARG_Lcd_Out, 0
$024C	$3A03			XORLW	3
$024D	$1D03			BTFSS	STATUS, Z
$024E	$2A52			GOTO	lcd_L_75
$024F	$	lcd_L_73:
$024F	$3094			MOVLW	148
$0250	$00BF			MOVWF	FARG_Lcd_Out
$0251	$2A5B			GOTO	lcd_L_66
$0252	$	lcd_L_75:
;lcd.ppas,257 :: 		
$0252	$	lcd_L_77:
$0252	$083F			MOVF	FARG_Lcd_Out, 0
$0253	$3A04			XORLW	4
$0254	$1D03			BTFSS	STATUS, Z
$0255	$2A59			GOTO	lcd_L_78
$0256	$	lcd_L_76:
$0256	$30D4			MOVLW	212
$0257	$00BF			MOVWF	FARG_Lcd_Out
;lcd.ppas,258 :: 		
$0258	$2A5B			GOTO	lcd_L_66
$0259	$	lcd_L_78:
$0259	$3080			MOVLW	128
$025A	$00BF			MOVWF	FARG_Lcd_Out
$025B	$	lcd_L_66:
;lcd.ppas,260 :: 		
$025B	$0340			DECF	FARG_Lcd_Out+1, 0
$025C	$00F0			MOVWF	STACK_0
$025D	$083F			MOVF	FARG_Lcd_Out, 0
$025E	$07F0			ADDWF	STACK_0, 1
$025F	$0870			MOVF	STACK_0, 0
$0260	$00BF			MOVWF	FARG_Lcd_Out
;lcd.ppas,261 :: 		
$0261	$0870			MOVF	STACK_0, 0
$0262	$00CC			MOVWF	FARG_Lcd_Cmd
$0263	$2123			CALL	_lcd_cmd
;lcd.ppas,262 :: 		
$0264	$01A8			CLRF	lcd_lcdcmd_status, 1
;lcd.ppas,263 :: 		
$0265	$01C2			CLRF	_lcd_out_local_i, 1
;lcd.ppas,264 :: 		
$0266	$	lcd_L_80:
$0266	$0842			MOVF	_lcd_out_local_i, 0
$0267	$0741			ADDWF	FARG_Lcd_Out+2, 0
$0268	$0084			MOVWF	FSR
$0269	$0800			MOVF	INDF, 0
$026A	$00F2			MOVWF	STACK_2
$026B	$0872			MOVF	STACK_2, 0
$026C	$3A00			XORLW	0
$026D	$1903			BTFSC	STATUS, Z
$026E	$2A77			GOTO	lcd_L_81
;lcd.ppas,266 :: 		
$026F	$0842			MOVF	_lcd_out_local_i, 0
$0270	$0741			ADDWF	FARG_Lcd_Out+2, 0
$0271	$0084			MOVWF	FSR
$0272	$0800			MOVF	INDF, 0
$0273	$00C3			MOVWF	FARG_Lcd_Chr_CP
$0274	$2303			CALL	_lcd_chr_cp
;lcd.ppas,267 :: 		
$0275	$0AC2			INCF	_lcd_out_local_i, 1
;lcd.ppas,268 :: 		
$0276	$2A66			GOTO	lcd_L_80
$0277	$	lcd_L_81:
;lcd.ppas,269 :: 		
$0277	$3001			MOVLW	1
$0278	$00A8			MOVWF	lcd_lcdcmd_status
$0279	$	lcd_L_65:
;lcd.ppas,270 :: 		
$0279	$0008			RETURN
$02AC	$	_keypad_read:
;keypad_16.ppas,43 :: 		
;keypad_16.ppas,44 :: 		
$02AC	$1303			BCF	STATUS, RP1
$02AD	$1283			BCF	STATUS, RP0
$02AE	$01BF			CLRF	_keypad_read_local_result, 1
;keypad_16.ppas,45 :: 		
$02AF	$3010			MOVLW	16
$02B0	$00C1			MOVWF	_keypad_read_local_shifter
;keypad_16.ppas,47 :: 		
$02B1	$	keypad_16_L_3:
$02B1	$0841			MOVF	_keypad_read_local_shifter, 0
$02B2	$3C00			SUBLW	0
$02B3	$1803			BTFSC	STATUS, C
$02B4	$2AD8			GOTO	keypad_16_L_4
;keypad_16.ppas,50 :: 		
$02B5	$082A			MOVF	_key_pointer, 0
$02B6	$0084			MOVWF	FSR
;keypad_16.ppas,51 :: 		
$02B7	$30F0			MOVLW	240
$02B8	$0080			MOVWF	INDF
;keypad_16.ppas,53 :: 		
$02B9	$	keypad_16_L_7:
$02B9	$1784			BSF	FSR, 7
$02BA	$	keypad_16_L_8:
;keypad_16.ppas,54 :: 		
$02BA	$0941			COMF	_keypad_read_local_shifter, W
$02BB	$00F0			MOVWF	STACK_0
$02BC	$30FF			MOVLW	255
$02BD	$0570			ANDWF	STACK_0, 0
$02BE	$0080			MOVWF	INDF
;keypad_16.ppas,55 :: 		
$02BF	$2314			CALL	_delay_10us
;keypad_16.ppas,57 :: 		
$02C0	$1384			BCF	FSR, 7
$02C1	$	keypad_16_L_10:
;keypad_16.ppas,58 :: 		
$02C1	$300F			MOVLW	15
$02C2	$0500			ANDWF	INDF, 0
$02C3	$00F1			MOVWF	STACK_1
$02C4	$0871			MOVF	STACK_1, 0
$02C5	$00C0			MOVWF	_keypad_read_local_kdata
;keypad_16.ppas,59 :: 		
$02C6	$0871			MOVF	STACK_1, 0
$02C7	$3A00			XORLW	0
$02C8	$1903			BTFSC	STATUS, Z
$02C9	$2AD3			GOTO	keypad_16_L_12
$02CA	$	keypad_16_L_11:
;keypad_16.ppas,62 :: 		
$02CA	$	keypad_16_L_15:
$02CA	$0840			MOVF	_keypad_read_local_kdata, 0
$02CB	$3A00			XORLW	0
$02CC	$1903			BTFSC	STATUS, Z
$02CD	$2AD2			GOTO	keypad_16_L_16
;keypad_16.ppas,64 :: 		
$02CE	$0CC0			RRF	_keypad_read_local_kdata, 1
$02CF	$13C0			BCF	_keypad_read_local_kdata, 7
;keypad_16.ppas,65 :: 		
$02D0	$0ABF			INCF	_keypad_read_local_result, 1
;keypad_16.ppas,66 :: 		
$02D1	$2ACA			GOTO	keypad_16_L_15
$02D2	$	keypad_16_L_16:
;keypad_16.ppas,68 :: 		
$02D2	$2AD9			GOTO	keypad_16_L_1
;keypad_16.ppas,69 :: 		
$02D3	$	keypad_16_L_12:
$02D3	$	keypad_16_L_13:
;keypad_16.ppas,71 :: 		
$02D3	$0DC1			RLF	_keypad_read_local_shifter, 1
$02D4	$1041			BCF	_keypad_read_local_shifter, 0
;keypad_16.ppas,72 :: 		
$02D5	$3004			MOVLW	4
$02D6	$07BF			ADDWF	_keypad_read_local_result, 1
;keypad_16.ppas,73 :: 		
$02D7	$2AB1			GOTO	keypad_16_L_3
$02D8	$	keypad_16_L_4:
;keypad_16.ppas,74 :: 		
$02D8	$01BF			CLRF	_keypad_read_local_result, 1
$02D9	$	keypad_16_L_1:
;keypad_16.ppas,75 :: 		
$02D9	$083F			MOVF	_keypad_read_local_result, 0
$02DA	$00F0			MOVWF	STACK_0
$02DB	$0008			RETURN
$027A	$	_lcd_chr:
;lcd.ppas,78 :: 		
;lcd.ppas,80 :: 		
$027A	$	lcd_L_37:
$027A	$1303			BCF	STATUS, RP1
$027B	$1283			BCF	STATUS, RP0
$027C	$083F			MOVF	FARG_Lcd_Chr, 0
$027D	$3A01			XORLW	1
$027E	$1D03			BTFSS	STATUS, Z
$027F	$2A83			GOTO	lcd_L_38
$0280	$	lcd_L_36:
$0280	$3080			MOVLW	128
$0281	$00BF			MOVWF	FARG_Lcd_Chr
$0282	$2A9A			GOTO	lcd_L_35
$0283	$	lcd_L_38:
;lcd.ppas,81 :: 		
$0283	$	lcd_L_40:
$0283	$083F			MOVF	FARG_Lcd_Chr, 0
$0284	$3A02			XORLW	2
$0285	$1D03			BTFSS	STATUS, Z
$0286	$2A8A			GOTO	lcd_L_41
$0287	$	lcd_L_39:
$0287	$30C0			MOVLW	192
$0288	$00BF			MOVWF	FARG_Lcd_Chr
$0289	$2A9A			GOTO	lcd_L_35
$028A	$	lcd_L_41:
;lcd.ppas,82 :: 		
$028A	$	lcd_L_43:
$028A	$083F			MOVF	FARG_Lcd_Chr, 0
$028B	$3A03			XORLW	3
$028C	$1D03			BTFSS	STATUS, Z
$028D	$2A91			GOTO	lcd_L_44
$028E	$	lcd_L_42:
$028E	$3094			MOVLW	148
$028F	$00BF			MOVWF	FARG_Lcd_Chr
$0290	$2A9A			GOTO	lcd_L_35
$0291	$	lcd_L_44:
;lcd.ppas,83 :: 		
$0291	$	lcd_L_46:
$0291	$083F			MOVF	FARG_Lcd_Chr, 0
$0292	$3A04			XORLW	4
$0293	$1D03			BTFSS	STATUS, Z
$0294	$2A98			GOTO	lcd_L_47
$0295	$	lcd_L_45:
$0295	$30D4			MOVLW	212
$0296	$00BF			MOVWF	FARG_Lcd_Chr
;lcd.ppas,84 :: 		
$0297	$2A9A			GOTO	lcd_L_35
$0298	$	lcd_L_47:
$0298	$3080			MOVLW	128
$0299	$00BF			MOVWF	FARG_Lcd_Chr
$029A	$	lcd_L_35:
;lcd.ppas,86 :: 		
$029A	$0840			MOVF	FARG_Lcd_Chr+1, 0
$029B	$073F			ADDWF	FARG_Lcd_Chr, 0
$029C	$00F0			MOVWF	STACK_0
$029D	$03F0			DECF	STACK_0, 1
$029E	$0870			MOVF	STACK_0, 0
$029F	$00BF			MOVWF	FARG_Lcd_Chr
;lcd.ppas,88 :: 		
$02A0	$3001			MOVLW	1
$02A1	$00A8			MOVWF	lcd_lcdcmd_status
;lcd.ppas,89 :: 		
$02A2	$0870			MOVF	STACK_0, 0
$02A3	$00CC			MOVWF	FARG_Lcd_Cmd
$02A4	$2123			CALL	_lcd_cmd
;lcd.ppas,91 :: 		
$02A5	$01A8			CLRF	lcd_lcdcmd_status, 1
;lcd.ppas,92 :: 		
$02A6	$0841			MOVF	FARG_Lcd_Chr+2, 0
$02A7	$00CC			MOVWF	FARG_Lcd_Cmd
$02A8	$2123			CALL	_lcd_cmd
;lcd.ppas,93 :: 		
$02A9	$3001			MOVLW	1
$02AA	$00A8			MOVWF	lcd_lcdcmd_status
$02AB	$	lcd_L_34:
;lcd.ppas,94 :: 		
$02AB	$0008			RETURN
$01CA	$	_main:
;Exercice1.ppas,13 :: 		begin
;Exercice1.ppas,14 :: 		Keypad_Init(PORTB);
$01CA	$3006			MOVLW	PORTB
$01CB	$1303			BCF	STATUS, RP1
$01CC	$1283			BCF	STATUS, RP0
$01CD	$00BF			MOVWF	FARG_Keypad_Init
$01CE	$2323			CALL	_keypad_init
;Exercice1.ppas,15 :: 		init();
$01CF	$230C			CALL	_init
;Exercice1.ppas,16 :: 		Lcd_init(PORTD);
$01D0	$3008			MOVLW	PORTD
$01D1	$00BF			MOVWF	FARG_Lcd_Init
$01D2	$22DC			CALL	_lcd_init
;Exercice1.ppas,17 :: 		Lcd_Cmd(LCD_CURSOR_OFF);
$01D3	$300C			MOVLW	12
$01D4	$00CC			MOVWF	FARG_Lcd_Cmd
$01D5	$2123			CALL	_lcd_cmd
;Exercice1.ppas,18 :: 		Lcd_out(1,1,'Taper une touche :');
$01D6	$3001			MOVLW	1
$01D7	$00BF			MOVWF	FARG_Lcd_Out
$01D8	$3001			MOVLW	1
$01D9	$00C0			MOVWF	FARG_Lcd_Out+1
$01DA	$3054			MOVLW	84
$01DB	$00AC			MOVWF	?main_Local_Text+0
$01DC	$3061			MOVLW	97
$01DD	$00AD			MOVWF	?main_Local_Text+1
$01DE	$3070			MOVLW	112
$01DF	$00AE			MOVWF	?main_Local_Text+2
$01E0	$3065			MOVLW	101
$01E1	$00AF			MOVWF	?main_Local_Text+3
$01E2	$3072			MOVLW	114
$01E3	$00B0			MOVWF	?main_Local_Text+4
$01E4	$3020			MOVLW	32
$01E5	$00B1			MOVWF	?main_Local_Text+5
$01E6	$3075			MOVLW	117
$01E7	$00B2			MOVWF	?main_Local_Text+6
$01E8	$306E			MOVLW	110
$01E9	$00B3			MOVWF	?main_Local_Text+7
$01EA	$3065			MOVLW	101
$01EB	$00B4			MOVWF	?main_Local_Text+8
$01EC	$3020			MOVLW	32
$01ED	$00B5			MOVWF	?main_Local_Text+9
$01EE	$3074			MOVLW	116
$01EF	$00B6			MOVWF	?main_Local_Text+10
$01F0	$306F			MOVLW	111
$01F1	$00B7			MOVWF	?main_Local_Text+11
$01F2	$3075			MOVLW	117
$01F3	$00B8			MOVWF	?main_Local_Text+12
$01F4	$3063			MOVLW	99
$01F5	$00B9			MOVWF	?main_Local_Text+13
$01F6	$3068			MOVLW	104
$01F7	$00BA			MOVWF	?main_Local_Text+14
$01F8	$3065			MOVLW	101
$01F9	$00BB			MOVWF	?main_Local_Text+15
$01FA	$3020			MOVLW	32
$01FB	$00BC			MOVWF	?main_Local_Text+16
$01FC	$303A			MOVLW	58
$01FD	$00BD			MOVWF	?main_Local_Text+17
$01FE	$01BE			CLRF	?main_Local_Text+18
$01FF	$302C			MOVLW	?main_Local_Text
$0200	$00C1			MOVWF	FARG_Lcd_Out+2
$0201	$223B			CALL	_lcd_out
;Exercice1.ppas,20 :: 		while 1 do
$0202	$	Exercice1_L_3:
;Exercice1.ppas,23 :: 		kp := 0;
$0202	$01AB			CLRF	_kp, 1
;Exercice1.ppas,24 :: 		while kp = 0 do
$0203	$	Exercice1_L_8:
$0203	$082B			MOVF	_kp, 0
$0204	$3A00			XORLW	0
$0205	$1D03			BTFSS	STATUS, Z
$0206	$2A0B			GOTO	Exercice1_L_9
;Exercice1.ppas,28 :: 		kp := Keypad_Read();
$0207	$22AC			CALL	_keypad_read
$0208	$0870			MOVF	STACK_0, 0
$0209	$00AB			MOVWF	_kp
;Exercice1.ppas,29 :: 		end;
$020A	$2A03			GOTO	Exercice1_L_8
$020B	$	Exercice1_L_9:
;Exercice1.ppas,31 :: 		if kp <= 10 then
$020B	$082B			MOVF	_kp, 0
$020C	$3C0A			SUBLW	10
$020D	$1C03			BTFSS	STATUS, C
$020E	$2A12			GOTO	Exercice1_L_13
$020F	$	Exercice1_L_12:
;Exercice1.ppas,32 :: 		kp := kp + 47
$020F	$302F			MOVLW	47
$0210	$07AB			ADDWF	_kp, 1
$0211	$2A14			GOTO	Exercice1_L_14
;Exercice1.ppas,33 :: 		else
$0212	$	Exercice1_L_13:
;Exercice1.ppas,34 :: 		kp := kp + 54;
$0212	$3036			MOVLW	54
$0213	$07AB			ADDWF	_kp, 1
$0214	$	Exercice1_L_14:
;Exercice1.ppas,38 :: 		Lcd_Chr(2,1, kp);
$0214	$3002			MOVLW	2
$0215	$00BF			MOVWF	FARG_Lcd_Chr
$0216	$3001			MOVLW	1
$0217	$00C0			MOVWF	FARG_Lcd_Chr+1
$0218	$082B			MOVF	_kp, 0
$0219	$00C1			MOVWF	FARG_Lcd_Chr+2
$021A	$227A			CALL	_lcd_chr
;Exercice1.ppas,39 :: 		delay_ms(200);
$021B	$3003			MOVLW	3
$021C	$00FC			MOVWF	STACK_12
$021D	$30FF			MOVLW	255
$021E	$00FB			MOVWF	STACK_11
$021F	$30FF			MOVLW	255
$0220	$00FA			MOVWF	STACK_10
$0221	$0BFC			DECFSZ	STACK_12, F
$0222	$2A24			GOTO	$+2
$0223	$2A2B			GOTO	$+8
$0224	$0BFB			DECFSZ	STACK_11, F
$0225	$2A27			GOTO	$+2
$0226	$2A2A			GOTO	$+4
$0227	$0BFA			DECFSZ	STACK_10, F
$0228	$2A27			GOTO	$-1
$0229	$2A24			GOTO	$-5
$022A	$2A21			GOTO	$-9
$022B	$300B			MOVLW	11
$022C	$00FB			MOVWF	STACK_11
$022D	$30FF			MOVLW	255
$022E	$00FA			MOVWF	STACK_10
$022F	$0BFB			DECFSZ	STACK_11, F
$0230	$2A32			GOTO	$+2
$0231	$2A35			GOTO	$+4
$0232	$0BFA			DECFSZ	STACK_10, F
$0233	$2A32			GOTO	$-1
$0234	$2A2F			GOTO	$-5
$0235	$3018			MOVLW	24
$0236	$00FA			MOVWF	STACK_10
$0237	$0BFA			DECFSZ	STACK_10, F
$0238	$2A37			GOTO	$-1
;Exercice1.ppas,40 :: 		end;
$0239	$2A02			GOTO	Exercice1_L_3
;Exercice1.ppas,42 :: 		end.
$023A	$2A3A			GOTO	$
