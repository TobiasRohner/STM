EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1200 1900 0    50   Input ~ 0
X1
Text HLabel 1200 2000 0    50   Input ~ 0
X2
Text HLabel 3250 3900 0    50   Input ~ 0
Y1
Text HLabel 3250 4000 0    50   Input ~ 0
Y2
Text HLabel 7300 5750 0    50   Input ~ 0
Z1
Text HLabel 7300 5850 0    50   Input ~ 0
Z2
Text HLabel 1500 5800 0    50   Input ~ 0
BIAS
Text HLabel 1500 6100 0    50   Input ~ 0
TIP
Text HLabel 10100 5800 2    50   Output ~ 0
Z_OUT
Text HLabel 5700 5600 2    50   Output ~ 0
BIAS_OUT
Text HLabel 5700 5700 2    50   Output ~ 0
TIP_OUT
$Comp
L OPA2227UA_2K5:OPA2227UA_2K5 U7
U 1 1 5EDF08BB
P 3850 5900
F 0 "U7" H 3850 6570 50  0000 C CNN
F 1 "OPA2227UA_2K5" H 3850 6479 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm_ThermalVias" H 3850 5900 50  0001 L BNN
F 3 "Texas Instruments" H 3850 5900 50  0001 L BNN
F 4 "-" H 3850 5900 50  0001 L BNN "Field4"
F 5 "75C4637" H 3850 5900 50  0001 L BNN "Field5"
F 6 "OPA2227UA/2K5" H 3850 5900 50  0001 L BNN "Field6"
F 7 "SOIC-8" H 3850 5900 50  0001 L BNN "Field7"
	1    3850 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 5EDF0E90
P 3400 7150
F 0 "C31" H 3515 7196 50  0000 L CNN
F 1 "100nF" H 3515 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3438 7000 50  0001 C CNN
F 3 "~" H 3400 7150 50  0001 C CNN
	1    3400 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C32
U 1 1 5EDF0FD7
P 3900 7150
F 0 "C32" H 4015 7196 50  0000 L CNN
F 1 "4.7uF" H 4015 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3938 7000 50  0001 C CNN
F 3 "~" H 3900 7150 50  0001 C CNN
	1    3900 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR045
U 1 1 5EDF121D
P 3400 7300
F 0 "#PWR045" H 3400 7050 50  0001 C CNN
F 1 "GNDA" H 3405 7127 50  0000 C CNN
F 2 "" H 3400 7300 50  0001 C CNN
F 3 "" H 3400 7300 50  0001 C CNN
	1    3400 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR044
U 1 1 5EDF1557
P 3400 7000
F 0 "#PWR044" H 3400 6850 50  0001 C CNN
F 1 "+15V" H 3415 7173 50  0000 C CNN
F 2 "" H 3400 7000 50  0001 C CNN
F 3 "" H 3400 7000 50  0001 C CNN
	1    3400 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7000 3400 7000
Connection ~ 3400 7000
Wire Wire Line
	3400 7300 3900 7300
Connection ~ 3400 7300
$Comp
L Device:C C33
U 1 1 5EDF28D9
P 4400 7150
F 0 "C33" H 4515 7196 50  0000 L CNN
F 1 "100nF" H 4515 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4438 7000 50  0001 C CNN
F 3 "~" H 4400 7150 50  0001 C CNN
	1    4400 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C34
U 1 1 5EDF28DF
P 4900 7150
F 0 "C34" H 5015 7196 50  0000 L CNN
F 1 "4.7uF" H 5015 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4938 7000 50  0001 C CNN
F 3 "~" H 4900 7150 50  0001 C CNN
	1    4900 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR047
U 1 1 5EDF28E5
P 4400 7300
F 0 "#PWR047" H 4400 7050 50  0001 C CNN
F 1 "GNDA" H 4405 7127 50  0000 C CNN
F 2 "" H 4400 7300 50  0001 C CNN
F 3 "" H 4400 7300 50  0001 C CNN
	1    4400 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7000 4400 7000
Wire Wire Line
	4400 7300 4900 7300
Connection ~ 4400 7300
$Comp
L power:-15V #PWR046
U 1 1 5EDF2B4C
P 4400 7000
F 0 "#PWR046" H 4400 7100 50  0001 C CNN
F 1 "-15V" H 4415 7173 50  0000 C CNN
F 2 "" H 4400 7000 50  0001 C CNN
F 3 "" H 4400 7000 50  0001 C CNN
	1    4400 7000
	1    0    0    -1  
$EndComp
Connection ~ 4400 7000
$Comp
L power:+15V #PWR042
U 1 1 5EDF51D6
P 3150 5600
F 0 "#PWR042" H 3150 5450 50  0001 C CNN
F 1 "+15V" V 3165 5728 50  0000 L CNN
F 2 "" H 3150 5600 50  0001 C CNN
F 3 "" H 3150 5600 50  0001 C CNN
	1    3150 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR043
U 1 1 5EDF548F
P 3150 6400
F 0 "#PWR043" H 3150 6500 50  0001 C CNN
F 1 "-15V" V 3165 6528 50  0000 L CNN
F 2 "" H 3150 6400 50  0001 C CNN
F 3 "" H 3150 6400 50  0001 C CNN
	1    3150 6400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5EE0BA6F
P 3850 5100
F 0 "R14" V 3643 5100 50  0000 C CNN
F 1 "20kOhm" V 3734 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3780 5100 50  0001 C CNN
F 3 "~" H 3850 5100 50  0001 C CNN
	1    3850 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5EE0BC8E
P 3850 4800
F 0 "R13" V 3643 4800 50  0000 C CNN
F 1 "20kOhm" V 3734 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3780 4800 50  0001 C CNN
F 3 "~" H 3850 4800 50  0001 C CNN
	1    3850 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 5600 4550 5100
Wire Wire Line
	4550 5100 4000 5100
Wire Wire Line
	4000 4800 4650 4800
Wire Wire Line
	4650 4800 4650 5700
Wire Wire Line
	4650 5700 4550 5700
Wire Wire Line
	3700 5100 2750 5100
Wire Wire Line
	2750 5100 2750 5900
Wire Wire Line
	2750 5900 3150 5900
$Comp
L Device:R R12
U 1 1 5EE0CB22
P 2750 6650
F 0 "R12" H 2820 6696 50  0000 L CNN
F 1 "12kOhm" H 2820 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 6650 50  0001 C CNN
F 3 "~" H 2750 6650 50  0001 C CNN
	1    2750 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5EE0CDED
P 2450 6650
F 0 "R11" H 2250 6700 50  0000 L CNN
F 1 "12kOhm" H 2100 6600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2380 6650 50  0001 C CNN
F 3 "~" H 2450 6650 50  0001 C CNN
	1    2450 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6200 2450 4800
Wire Wire Line
	2450 4800 3700 4800
Wire Wire Line
	2450 6200 3150 6200
Wire Wire Line
	2750 6500 2750 5900
Connection ~ 2750 5900
Wire Wire Line
	2450 6200 2450 6500
Connection ~ 2450 6200
$Comp
L power:GNDA #PWR041
U 1 1 5EE0E068
P 2750 6800
F 0 "#PWR041" H 2750 6550 50  0001 C CNN
F 1 "GNDA" H 2755 6627 50  0000 C CNN
F 2 "" H 2750 6800 50  0001 C CNN
F 3 "" H 2750 6800 50  0001 C CNN
	1    2750 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR040
U 1 1 5EE0E35F
P 2450 6800
F 0 "#PWR040" H 2450 6550 50  0001 C CNN
F 1 "GNDA" H 2455 6627 50  0000 C CNN
F 2 "" H 2450 6800 50  0001 C CNN
F 3 "" H 2450 6800 50  0001 C CNN
	1    2450 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5800 3150 5800
Wire Wire Line
	3150 6100 1500 6100
Wire Notes Line
	1900 7750 5400 7750
Wire Notes Line
	5400 7750 5400 4350
Wire Notes Line
	5400 4350 1900 4350
Wire Notes Line
	1900 4350 1900 7750
Text Notes 2850 4300 2    50   ~ 0
Sample Voltage Amplifier
Wire Wire Line
	5700 5600 4550 5600
Connection ~ 4550 5600
Wire Wire Line
	4650 5700 5700 5700
Connection ~ 4650 5700
Wire Wire Line
	1200 1900 2200 1900
Wire Wire Line
	2200 2000 1200 2000
Wire Wire Line
	3250 3900 4250 3900
Wire Wire Line
	4250 4000 3250 4000
Wire Wire Line
	7300 5750 8300 5750
Wire Wire Line
	8300 5850 7300 5850
Text HLabel 10500 3450 2    50   Output ~ 0
Y2_OUT
Text HLabel 10500 3350 2    50   Output ~ 0
Y1_OUT
Text HLabel 8450 1450 2    50   Output ~ 0
X2_OUT
Text HLabel 8450 1350 2    50   Output ~ 0
X1_OUT
$Sheet
S 8300 5550 750  500 
U 5EE1BB39
F0 "CoarseFineMixer_Z" 50
F1 "CoarseFineMixer.sch" 50
F2 "IN_COARSE" I L 8300 5750 50 
F3 "IN_FINE" I L 8300 5850 50 
F4 "OUT" O R 9050 5800 50 
$EndSheet
$Sheet
S 4250 3700 750  500 
U 5EE1B6B4
F0 "CoarseFineMixer_Y" 50
F1 "CoarseFineMixer.sch" 50
F2 "IN_COARSE" I L 4250 3900 50 
F3 "IN_FINE" I L 4250 4000 50 
F4 "OUT" O R 5000 3950 50 
$EndSheet
Wire Wire Line
	10100 5800 9050 5800
$Comp
L OPA2227UA_2K5:OPA2227UA_2K5 U8
U 1 1 5EE32303
P 5550 1650
F 0 "U8" H 5550 2320 50  0000 C CNN
F 1 "OPA2227UA_2K5" H 5550 2229 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm_ThermalVias" H 5550 1650 50  0001 L BNN
F 3 "Texas Instruments" H 5550 1650 50  0001 L BNN
F 4 "-" H 5550 1650 50  0001 L BNN "Field4"
F 5 "75C4637" H 5550 1650 50  0001 L BNN "Field5"
F 6 "OPA2227UA/2K5" H 5550 1650 50  0001 L BNN "Field6"
F 7 "SOIC-8" H 5550 1650 50  0001 L BNN "Field7"
	1    5550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR048
U 1 1 5EE33AFC
P 4850 1350
F 0 "#PWR048" H 4850 1200 50  0001 C CNN
F 1 "+15V" V 4865 1478 50  0000 L CNN
F 2 "" H 4850 1350 50  0001 C CNN
F 3 "" H 4850 1350 50  0001 C CNN
	1    4850 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR050
U 1 1 5EE33DA5
P 4850 2150
F 0 "#PWR050" H 4850 2250 50  0001 C CNN
F 1 "-15V" V 4865 2278 50  0000 L CNN
F 2 "" H 4850 2150 50  0001 C CNN
F 3 "" H 4850 2150 50  0001 C CNN
	1    4850 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 1650 4450 1650
Wire Wire Line
	4450 1650 4450 900 
Wire Wire Line
	4450 900  6250 900 
Wire Wire Line
	6250 900  6250 1350
$Comp
L Device:R R16
U 1 1 5EE3473F
P 5550 750
F 0 "R16" V 5343 750 50  0000 C CNN
F 1 "10kOhm" V 5434 750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5480 750 50  0001 C CNN
F 3 "~" H 5550 750 50  0001 C CNN
	1    5550 750 
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5EE34C18
P 4100 1950
F 0 "R15" V 3893 1950 50  0000 C CNN
F 1 "10kOhm" V 3984 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4030 1950 50  0001 C CNN
F 3 "~" H 4100 1950 50  0001 C CNN
	1    4100 1950
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR049
U 1 1 5EE34F72
P 4850 1850
F 0 "#PWR049" H 4850 1600 50  0001 C CNN
F 1 "GNDA" V 4855 1723 50  0000 R CNN
F 2 "" H 4850 1850 50  0001 C CNN
F 3 "" H 4850 1850 50  0001 C CNN
	1    4850 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 1950 4350 1950
Wire Wire Line
	6250 1450 6350 1450
Wire Wire Line
	6350 1450 6350 750 
Wire Wire Line
	6350 750  5700 750 
Wire Wire Line
	5400 750  4350 750 
Wire Wire Line
	4350 750  4350 1950
Connection ~ 4350 1950
Wire Wire Line
	4350 1950 4850 1950
Wire Wire Line
	3950 1950 3850 1950
Wire Wire Line
	4850 1550 3850 1550
Wire Wire Line
	3850 1550 3850 1950
Connection ~ 3850 1950
Wire Wire Line
	3850 1950 2950 1950
$Comp
L Device:C C35
U 1 1 5EE49CDD
P 6350 1950
F 0 "C35" H 6465 1996 50  0000 L CNN
F 1 "100nF" H 6465 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6388 1800 50  0001 C CNN
F 3 "~" H 6350 1950 50  0001 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 5EE49CE3
P 6850 1950
F 0 "C36" H 6965 1996 50  0000 L CNN
F 1 "4.7uF" H 6965 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6888 1800 50  0001 C CNN
F 3 "~" H 6850 1950 50  0001 C CNN
	1    6850 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR052
U 1 1 5EE49CE9
P 6350 2100
F 0 "#PWR052" H 6350 1850 50  0001 C CNN
F 1 "GNDA" H 6355 1927 50  0000 C CNN
F 2 "" H 6350 2100 50  0001 C CNN
F 3 "" H 6350 2100 50  0001 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR051
U 1 1 5EE49CEF
P 6350 1800
F 0 "#PWR051" H 6350 1650 50  0001 C CNN
F 1 "+15V" H 6365 1973 50  0000 C CNN
F 2 "" H 6350 1800 50  0001 C CNN
F 3 "" H 6350 1800 50  0001 C CNN
	1    6350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1800 6350 1800
Connection ~ 6350 1800
Wire Wire Line
	6350 2100 6850 2100
Connection ~ 6350 2100
$Comp
L Device:C C37
U 1 1 5EE49CF9
P 7350 1950
F 0 "C37" H 7465 1996 50  0000 L CNN
F 1 "100nF" H 7465 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7388 1800 50  0001 C CNN
F 3 "~" H 7350 1950 50  0001 C CNN
	1    7350 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 5EE49CFF
P 7850 1950
F 0 "C38" H 7965 1996 50  0000 L CNN
F 1 "4.7uF" H 7965 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7888 1800 50  0001 C CNN
F 3 "~" H 7850 1950 50  0001 C CNN
	1    7850 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR057
U 1 1 5EE49D05
P 7350 2100
F 0 "#PWR057" H 7350 1850 50  0001 C CNN
F 1 "GNDA" H 7355 1927 50  0000 C CNN
F 2 "" H 7350 2100 50  0001 C CNN
F 3 "" H 7350 2100 50  0001 C CNN
	1    7350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1800 7350 1800
Wire Wire Line
	7350 2100 7850 2100
Connection ~ 7350 2100
$Comp
L power:-15V #PWR056
U 1 1 5EE49D0E
P 7350 1800
F 0 "#PWR056" H 7350 1900 50  0001 C CNN
F 1 "-15V" H 7365 1973 50  0000 C CNN
F 2 "" H 7350 1800 50  0001 C CNN
F 3 "" H 7350 1800 50  0001 C CNN
	1    7350 1800
	1    0    0    -1  
$EndComp
Connection ~ 7350 1800
Wire Wire Line
	6250 1350 8450 1350
Connection ~ 6250 1350
Wire Wire Line
	6350 1450 8450 1450
Connection ~ 6350 1450
$Comp
L OPA2227UA_2K5:OPA2227UA_2K5 U9
U 1 1 5EE6B4D4
P 7600 3650
F 0 "U9" H 7600 4320 50  0000 C CNN
F 1 "OPA2227UA_2K5" H 7600 4229 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm_ThermalVias" H 7600 3650 50  0001 L BNN
F 3 "Texas Instruments" H 7600 3650 50  0001 L BNN
F 4 "-" H 7600 3650 50  0001 L BNN "Field4"
F 5 "75C4637" H 7600 3650 50  0001 L BNN "Field5"
F 6 "OPA2227UA/2K5" H 7600 3650 50  0001 L BNN "Field6"
F 7 "SOIC-8" H 7600 3650 50  0001 L BNN "Field7"
	1    7600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR053
U 1 1 5EE6B4DA
P 6900 3350
F 0 "#PWR053" H 6900 3200 50  0001 C CNN
F 1 "+15V" V 6915 3478 50  0000 L CNN
F 2 "" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR055
U 1 1 5EE6B4E0
P 6900 4150
F 0 "#PWR055" H 6900 4250 50  0001 C CNN
F 1 "-15V" V 6915 4278 50  0000 L CNN
F 2 "" H 6900 4150 50  0001 C CNN
F 3 "" H 6900 4150 50  0001 C CNN
	1    6900 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 3650 6500 3650
Wire Wire Line
	6500 3650 6500 2900
Wire Wire Line
	6500 2900 8300 2900
Wire Wire Line
	8300 2900 8300 3350
$Comp
L Device:R R18
U 1 1 5EE6B4EA
P 7600 2750
F 0 "R18" V 7393 2750 50  0000 C CNN
F 1 "10kOhm" V 7484 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7530 2750 50  0001 C CNN
F 3 "~" H 7600 2750 50  0001 C CNN
	1    7600 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5EE6B4F0
P 6150 3950
F 0 "R17" V 5943 3950 50  0000 C CNN
F 1 "10kOhm" V 6034 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6080 3950 50  0001 C CNN
F 3 "~" H 6150 3950 50  0001 C CNN
	1    6150 3950
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR054
U 1 1 5EE6B4F6
P 6900 3850
F 0 "#PWR054" H 6900 3600 50  0001 C CNN
F 1 "GNDA" V 6905 3723 50  0000 R CNN
F 2 "" H 6900 3850 50  0001 C CNN
F 3 "" H 6900 3850 50  0001 C CNN
	1    6900 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 3950 6400 3950
Wire Wire Line
	8300 3450 8400 3450
Wire Wire Line
	8400 3450 8400 2750
Wire Wire Line
	8400 2750 7750 2750
Wire Wire Line
	7450 2750 6400 2750
Wire Wire Line
	6400 2750 6400 3950
Connection ~ 6400 3950
Wire Wire Line
	6400 3950 6900 3950
Wire Wire Line
	6000 3950 5900 3950
Wire Wire Line
	6900 3550 5900 3550
Wire Wire Line
	5900 3550 5900 3950
Connection ~ 5900 3950
Wire Wire Line
	5900 3950 5000 3950
$Comp
L Device:C C39
U 1 1 5EE6B509
P 8400 3950
F 0 "C39" H 8515 3996 50  0000 L CNN
F 1 "100nF" H 8515 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8438 3800 50  0001 C CNN
F 3 "~" H 8400 3950 50  0001 C CNN
	1    8400 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5EE6B50F
P 8900 3950
F 0 "C40" H 9015 3996 50  0000 L CNN
F 1 "4.7uF" H 9015 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8938 3800 50  0001 C CNN
F 3 "~" H 8900 3950 50  0001 C CNN
	1    8900 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR059
U 1 1 5EE6B515
P 8400 4100
F 0 "#PWR059" H 8400 3850 50  0001 C CNN
F 1 "GNDA" H 8405 3927 50  0000 C CNN
F 2 "" H 8400 4100 50  0001 C CNN
F 3 "" H 8400 4100 50  0001 C CNN
	1    8400 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR058
U 1 1 5EE6B51B
P 8400 3800
F 0 "#PWR058" H 8400 3650 50  0001 C CNN
F 1 "+15V" H 8415 3973 50  0000 C CNN
F 2 "" H 8400 3800 50  0001 C CNN
F 3 "" H 8400 3800 50  0001 C CNN
	1    8400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3800 8400 3800
Connection ~ 8400 3800
Wire Wire Line
	8400 4100 8900 4100
Connection ~ 8400 4100
$Comp
L Device:C C41
U 1 1 5EE6B525
P 9400 3950
F 0 "C41" H 9515 3996 50  0000 L CNN
F 1 "100nF" H 9515 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9438 3800 50  0001 C CNN
F 3 "~" H 9400 3950 50  0001 C CNN
	1    9400 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C42
U 1 1 5EE6B52B
P 9900 3950
F 0 "C42" H 10015 3996 50  0000 L CNN
F 1 "4.7uF" H 10015 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9938 3800 50  0001 C CNN
F 3 "~" H 9900 3950 50  0001 C CNN
	1    9900 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR061
U 1 1 5EE6B531
P 9400 4100
F 0 "#PWR061" H 9400 3850 50  0001 C CNN
F 1 "GNDA" H 9405 3927 50  0000 C CNN
F 2 "" H 9400 4100 50  0001 C CNN
F 3 "" H 9400 4100 50  0001 C CNN
	1    9400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3800 9400 3800
Wire Wire Line
	9400 4100 9900 4100
Connection ~ 9400 4100
$Comp
L power:-15V #PWR060
U 1 1 5EE6B53A
P 9400 3800
F 0 "#PWR060" H 9400 3900 50  0001 C CNN
F 1 "-15V" H 9415 3973 50  0000 C CNN
F 2 "" H 9400 3800 50  0001 C CNN
F 3 "" H 9400 3800 50  0001 C CNN
	1    9400 3800
	1    0    0    -1  
$EndComp
Connection ~ 9400 3800
Wire Wire Line
	8300 3350 10500 3350
Connection ~ 8300 3350
Wire Wire Line
	8400 3450 10500 3450
Connection ~ 8400 3450
Wire Notes Line
	5800 2500 5800 4500
Wire Notes Line
	5800 4500 10300 4500
Wire Notes Line
	10300 4500 10300 2500
Wire Notes Line
	5800 2500 10300 2500
Text Notes 6800 4600 2    50   ~ 0
Y-Axis Buffer and Inverter
Wire Notes Line
	3650 2450 3650 500 
Wire Notes Line
	3650 500  8300 500 
Wire Notes Line
	8300 500  8300 2450
Wire Notes Line
	3650 2450 8300 2450
$Sheet
S 2200 1700 750  500 
U 5EE1ABF1
F0 "CoarseFineMixer_X" 50
F1 "CoarseFineMixer.sch" 50
F2 "IN_COARSE" I L 2200 1900 50 
F3 "IN_FINE" I L 2200 2000 50 
F4 "OUT" O R 2950 1950 50 
$EndSheet
Text Notes 4650 2550 2    50   ~ 0
X-Axis Buffer and Inverter
$EndSCHEMATC
