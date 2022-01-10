EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L OPA2227UA_2K5:OPA2227UA_2K5 U1
U 1 1 5EC16C5A
P 3250 2200
F 0 "U1" H 3250 2870 50  0000 C CNN
F 1 "OPA2227UA_2K5" H 3250 2779 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm_ThermalVias" H 3250 2200 50  0001 L BNN
F 3 "Texas Instruments" H 3250 2200 50  0001 L BNN
F 4 "-" H 3250 2200 50  0001 L BNN "Field4"
F 5 "75C4637" H 3250 2200 50  0001 L BNN "Field5"
F 6 "OPA2227UA/2K5" H 3250 2200 50  0001 L BNN "Field6"
F 7 "SOIC-8" H 3250 2200 50  0001 L BNN "Field7"
	1    3250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1900 3950 1450
Wire Wire Line
	3950 1450 2350 1450
Wire Wire Line
	2350 1450 2350 2200
Wire Wire Line
	2350 2200 2550 2200
Wire Wire Line
	2550 2500 2250 2500
Wire Wire Line
	4050 1350 2250 1350
Wire Wire Line
	2250 1350 2250 2500
$Comp
L power:+15V #PWR07
U 1 1 5EC19BB4
P 2550 1750
F 0 "#PWR07" H 2550 1600 50  0001 C CNN
F 1 "+15V" H 2565 1923 50  0000 C CNN
F 2 "" H 2550 1750 50  0001 C CNN
F 3 "" H 2550 1750 50  0001 C CNN
	1    2550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1750 2550 1900
$Comp
L power:-15V #PWR08
U 1 1 5EC19EE0
P 2550 2850
F 0 "#PWR08" H 2550 2950 50  0001 C CNN
F 1 "-15V" H 2565 3023 50  0000 C CNN
F 2 "" H 2550 2850 50  0001 C CNN
F 3 "" H 2550 2850 50  0001 C CNN
	1    2550 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 2700 2550 2850
Text HLabel 950  2100 0    50   Input ~ 0
TIA_GND
Text HLabel 950  2400 0    50   Input ~ 0
TIA_DATA
$Comp
L Device:C C3
U 1 1 5EC1BCD5
P 1800 1250
F 0 "C3" H 1915 1296 50  0000 L CNN
F 1 "100nF" H 1915 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1838 1100 50  0001 C CNN
F 3 "~" H 1800 1250 50  0001 C CNN
	1    1800 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5EC1BEE0
P 1800 3000
F 0 "C4" H 1915 3046 50  0000 L CNN
F 1 "100nF" H 1915 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1838 2850 50  0001 C CNN
F 3 "~" H 1800 3000 50  0001 C CNN
	1    1800 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR03
U 1 1 5EC1C5FC
P 1800 1100
F 0 "#PWR03" H 1800 950 50  0001 C CNN
F 1 "+15V" H 1815 1273 50  0000 C CNN
F 2 "" H 1800 1100 50  0001 C CNN
F 3 "" H 1800 1100 50  0001 C CNN
	1    1800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR05
U 1 1 5EC1C7F8
P 1800 2850
F 0 "#PWR05" H 1800 2950 50  0001 C CNN
F 1 "-15V" H 1815 3023 50  0000 C CNN
F 2 "" H 1800 2850 50  0001 C CNN
F 3 "" H 1800 2850 50  0001 C CNN
	1    1800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR06
U 1 1 5EC1C9F0
P 1800 3150
F 0 "#PWR06" H 1800 2900 50  0001 C CNN
F 1 "GNDA" H 1805 2977 50  0000 C CNN
F 2 "" H 1800 3150 50  0001 C CNN
F 3 "" H 1800 3150 50  0001 C CNN
	1    1800 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR04
U 1 1 5EC1CC37
P 1800 1400
F 0 "#PWR04" H 1800 1150 50  0001 C CNN
F 1 "GNDA" H 1805 1227 50  0000 C CNN
F 2 "" H 1800 1400 50  0001 C CNN
F 3 "" H 1800 1400 50  0001 C CNN
	1    1800 1400
	1    0    0    -1  
$EndComp
Wire Notes Line
	4250 3700 4250 850 
Wire Notes Line
	4250 850  1150 850 
Wire Notes Line
	1150 850  1150 3700
Wire Notes Line
	1150 3700 4250 3700
Text Notes 1150 800  0    50   ~ 0
Input Buffer
$Comp
L INA146UA_2K5:INA146UA_2K5 U2
U 1 1 5EC24619
P 5550 4250
F 0 "U2" H 5550 4920 50  0000 C CNN
F 1 "INA146UA_2K5" H 5550 4829 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm_ThermalVias" H 5550 4250 50  0001 L BNN
F 3 "INA146UA/2K5" H 5550 4250 50  0001 L BNN
F 4 "74K3815" H 5550 4250 50  0001 L BNN "Field4"
F 5 "1097463" H 5550 4250 50  0001 L BNN "Field5"
F 6 "TI" H 5550 4250 50  0001 L BNN "Field6"
F 7 "SOIC-8" H 5550 4250 50  0001 L BNN "Field7"
	1    5550 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5EC264C4
P 4750 6050
F 0 "C5" H 4865 6096 50  0000 L CNN
F 1 "100nF" H 4865 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4788 5900 50  0001 C CNN
F 3 "~" H 4750 6050 50  0001 C CNN
	1    4750 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR011
U 1 1 5EC264CA
P 4750 5900
F 0 "#PWR011" H 4750 5750 50  0001 C CNN
F 1 "+15V" H 4765 6073 50  0000 C CNN
F 2 "" H 4750 5900 50  0001 C CNN
F 3 "" H 4750 5900 50  0001 C CNN
	1    4750 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR012
U 1 1 5EC264D0
P 4750 6200
F 0 "#PWR012" H 4750 5950 50  0001 C CNN
F 1 "GNDA" H 4755 6027 50  0000 C CNN
F 2 "" H 4750 6200 50  0001 C CNN
F 3 "" H 4750 6200 50  0001 C CNN
	1    4750 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5EC27646
P 5700 6050
F 0 "C8" H 5815 6096 50  0000 L CNN
F 1 "100nF" H 5815 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5738 5900 50  0001 C CNN
F 3 "~" H 5700 6050 50  0001 C CNN
	1    5700 6050
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR017
U 1 1 5EC2764C
P 5700 5900
F 0 "#PWR017" H 5700 6000 50  0001 C CNN
F 1 "-15V" H 5715 6073 50  0000 C CNN
F 2 "" H 5700 5900 50  0001 C CNN
F 3 "" H 5700 5900 50  0001 C CNN
	1    5700 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR018
U 1 1 5EC27652
P 5700 6200
F 0 "#PWR018" H 5700 5950 50  0001 C CNN
F 1 "GNDA" H 5705 6027 50  0000 C CNN
F 2 "" H 5700 6200 50  0001 C CNN
F 3 "" H 5700 6200 50  0001 C CNN
	1    5700 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR013
U 1 1 5EC27E3B
P 4850 3800
F 0 "#PWR013" H 4850 3650 50  0001 C CNN
F 1 "+15V" H 4865 3973 50  0000 C CNN
F 2 "" H 4850 3800 50  0001 C CNN
F 3 "" H 4850 3800 50  0001 C CNN
	1    4850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR014
U 1 1 5EC281BB
P 4850 4900
F 0 "#PWR014" H 4850 5000 50  0001 C CNN
F 1 "-15V" H 4865 5073 50  0000 C CNN
F 2 "" H 4850 4900 50  0001 C CNN
F 3 "" H 4850 4900 50  0001 C CNN
	1    4850 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 3800 4850 3950
Wire Wire Line
	4850 4750 4850 4900
NoConn ~ 6250 4050
$Comp
L Device:R R1
U 1 1 5EC2D443
P 4500 5400
F 0 "R1" H 4430 5354 50  0000 R CNN
F 1 "10kOhm" H 4430 5445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 5400 50  0001 C CNN
F 3 "~" H 4500 5400 50  0001 C CNN
	1    4500 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5EC2E211
P 5500 5250
F 0 "R2" V 5707 5250 50  0000 C CNN
F 1 "27kOhm" V 5616 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5430 5250 50  0001 C CNN
F 3 "~" H 5500 5250 50  0001 C CNN
	1    5500 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3950 6350 3950
Wire Wire Line
	6350 3950 6350 5250
Wire Wire Line
	6350 5250 5650 5250
Wire Wire Line
	5350 5250 4500 5250
Wire Wire Line
	4500 5250 4500 4250
Wire Wire Line
	4500 4250 4850 4250
Connection ~ 4500 5250
$Comp
L power:GNDA #PWR010
U 1 1 5EC2F679
P 4500 5550
F 0 "#PWR010" H 4500 5300 50  0001 C CNN
F 1 "GNDA" H 4505 5377 50  0000 C CNN
F 2 "" H 4500 5550 50  0001 C CNN
F 3 "" H 4500 5550 50  0001 C CNN
	1    4500 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR09
U 1 1 5EC2FA28
P 4300 4150
F 0 "#PWR09" H 4300 3900 50  0001 C CNN
F 1 "GNDA" H 4305 3977 50  0000 C CNN
F 2 "" H 4300 4150 50  0001 C CNN
F 3 "" H 4300 4150 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4150 4300 4150
Text Notes 4400 3400 0    50   ~ 0
Differential Amplifier (Output 0-5V)
$Comp
L REF5050AIDR:REF5050AIDR U3
U 1 1 5EC4179A
P 6800 1750
F 0 "U3" H 6800 2420 50  0000 C CNN
F 1 "REF5050AIDR" H 6800 2329 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6800 1750 50  0001 L BNN
F 3 "50M8911" H 6800 1750 50  0001 L BNN
F 4 "Texas Instruments" H 6800 1750 50  0001 L BNN "Field4"
F 5 "1439628" H 6800 1750 50  0001 L BNN "Field5"
F 6 "REF5050AIDR" H 6800 1750 50  0001 L BNN "Field6"
F 7 "SOIC-8" H 6800 1750 50  0001 L BNN "Field7"
	1    6800 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR016
U 1 1 5EC4F64A
P 5650 2350
F 0 "#PWR016" H 5650 2100 50  0001 C CNN
F 1 "GNDA" H 5655 2177 50  0000 C CNN
F 2 "" H 5650 2350 50  0001 C CNN
F 3 "" H 5650 2350 50  0001 C CNN
	1    5650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EC50024
P 5650 2050
F 0 "C7" H 5765 2096 50  0000 L CNN
F 1 "10uF" H 5765 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5688 1900 50  0001 C CNN
F 3 "~" H 5650 2050 50  0001 C CNN
	1    5650 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR015
U 1 1 5EC50479
P 5650 1750
F 0 "#PWR015" H 5650 1600 50  0001 C CNN
F 1 "+15V" H 5665 1923 50  0000 C CNN
F 2 "" H 5650 1750 50  0001 C CNN
F 3 "" H 5650 1750 50  0001 C CNN
	1    5650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1750 6100 1750
Wire Wire Line
	5650 1750 5650 1900
Connection ~ 5650 1750
Wire Wire Line
	5650 2200 5650 2350
Wire Wire Line
	5650 2350 6100 2350
Connection ~ 5650 2350
NoConn ~ 6100 1450
Wire Wire Line
	7500 1450 7750 1450
$Comp
L Device:C C11
U 1 1 5EC564AE
P 7900 1450
F 0 "C11" V 7648 1450 50  0000 C CNN
F 1 "47uF" V 7739 1450 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7938 1300 50  0001 C CNN
F 3 "~" H 7900 1450 50  0001 C CNN
	1    7900 1450
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR020
U 1 1 5EC57B8F
P 8050 2100
F 0 "#PWR020" H 8050 1850 50  0001 C CNN
F 1 "GNDA" H 8055 1927 50  0000 C CNN
F 2 "" H 8050 2100 50  0001 C CNN
F 3 "" H 8050 2100 50  0001 C CNN
	1    8050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3450 8400 3450
$Comp
L Device:R R3
U 1 1 5EC5C8D4
P 7550 3950
F 0 "R3" V 7343 3950 50  0000 C CNN
F 1 "330Ohm" V 7434 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7480 3950 50  0001 C CNN
F 3 "~" H 7550 3950 50  0001 C CNN
	1    7550 3950
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5EC5CD71
P 7800 4200
F 0 "C10" H 7915 4246 50  0000 L CNN
F 1 "2.7nF" H 7915 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7838 4050 50  0001 C CNN
F 3 "~" H 7800 4200 50  0001 C CNN
	1    7800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3950 7800 3950
Wire Wire Line
	7800 3950 7800 4050
Connection ~ 7800 3950
Wire Wire Line
	7800 3950 8400 3950
$Comp
L power:GNDA #PWR019
U 1 1 5EC5EB61
P 7800 4350
F 0 "#PWR019" H 7800 4100 50  0001 C CNN
F 1 "GNDA" H 7805 4177 50  0000 C CNN
F 2 "" H 7800 4350 50  0001 C CNN
F 3 "" H 7800 4350 50  0001 C CNN
	1    7800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2900 8300 3050
Wire Wire Line
	8300 3050 8400 3050
Wire Wire Line
	8300 4250 8400 4250
$Comp
L power:GNDA #PWR021
U 1 1 5EC62DE4
P 8200 4550
F 0 "#PWR021" H 8200 4300 50  0001 C CNN
F 1 "GNDA" H 8205 4377 50  0000 C CNN
F 2 "" H 8200 4550 50  0001 C CNN
F 3 "" H 8200 4550 50  0001 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4050 8200 4050
$Comp
L Device:C C13
U 1 1 5EC63E42
P 8400 2200
F 0 "C13" H 8515 2246 50  0000 L CNN
F 1 "100nF" H 8515 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8438 2050 50  0001 C CNN
F 3 "~" H 8400 2200 50  0001 C CNN
	1    8400 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5EC64281
P 8900 2200
F 0 "C14" H 9015 2246 50  0000 L CNN
F 1 "4.7uF" H 9015 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8938 2050 50  0001 C CNN
F 3 "~" H 8900 2200 50  0001 C CNN
	1    8900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2050 8400 2050
Wire Wire Line
	8400 2350 8900 2350
$Comp
L Device:C C1
U 1 1 5EC6B17D
P 1350 1250
F 0 "C1" H 1465 1296 50  0000 L CNN
F 1 "4.7uF" H 1465 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1388 1100 50  0001 C CNN
F 3 "~" H 1350 1250 50  0001 C CNN
	1    1350 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1100 1800 1100
Connection ~ 1800 1100
Wire Wire Line
	1800 1400 1350 1400
Connection ~ 1800 1400
$Comp
L Device:C C2
U 1 1 5EC6DF46
P 1350 3000
F 0 "C2" H 1465 3046 50  0000 L CNN
F 1 "4.7uF" H 1465 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1388 2850 50  0001 C CNN
F 3 "~" H 1350 3000 50  0001 C CNN
	1    1350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2850 1800 2850
Connection ~ 1800 2850
Wire Wire Line
	1800 3150 1350 3150
Connection ~ 1800 3150
$Comp
L Device:C C6
U 1 1 5EC75C6E
P 5200 6050
F 0 "C6" H 5315 6096 50  0000 L CNN
F 1 "4.7uF" H 5315 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5238 5900 50  0001 C CNN
F 3 "~" H 5200 6050 50  0001 C CNN
	1    5200 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5EC78503
P 6150 6050
F 0 "C9" H 6265 6096 50  0000 L CNN
F 1 "4.7uF" H 6265 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6188 5900 50  0001 C CNN
F 3 "~" H 6150 6050 50  0001 C CNN
	1    6150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5900 4750 5900
Connection ~ 4750 5900
Wire Wire Line
	4750 6200 5200 6200
Connection ~ 4750 6200
Wire Wire Line
	5700 6200 6150 6200
Connection ~ 5700 6200
Wire Wire Line
	6150 5900 5700 5900
Connection ~ 5700 5900
$Comp
L Device:C C15
U 1 1 5EC852FD
P 9350 2200
F 0 "C15" H 9465 2246 50  0000 L CNN
F 1 "100nF" H 9465 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9388 2050 50  0001 C CNN
F 3 "~" H 9350 2200 50  0001 C CNN
	1    9350 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5EC86211
P 9800 2200
F 0 "C16" H 9915 2246 50  0000 L CNN
F 1 "4.7uF" H 9915 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9838 2050 50  0001 C CNN
F 3 "~" H 9800 2200 50  0001 C CNN
	1    9800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2050 9350 2050
Wire Wire Line
	9350 2350 9800 2350
Wire Notes Line
	10300 5000 10300 850 
Wire Notes Line
	10300 850  5250 850 
Wire Notes Line
	5250 850  5250 2950
Wire Notes Line
	5250 2950 7150 2950
Wire Notes Line
	7150 2950 7150 5000
Wire Notes Line
	7150 5000 10300 5000
Text Notes 5250 800  0    50   ~ 0
Analog to Digital Converter
Wire Wire Line
	3950 2000 4050 2000
Wire Wire Line
	4050 2000 4050 1350
Wire Wire Line
	3950 1900 4150 1900
Connection ~ 3950 1900
Connection ~ 4050 2000
Text HLabel 6750 3250 0    50   Input ~ 0
SCK
Text HLabel 6750 3550 0    50   Input ~ 0
CNV
Text HLabel 6750 3750 0    50   Input ~ 0
SDI
Wire Wire Line
	6350 3950 7400 3950
Wire Wire Line
	6750 3250 8400 3250
Wire Wire Line
	8400 3550 6750 3550
Wire Wire Line
	6750 3750 8400 3750
Text HLabel 10550 3050 2    50   Output ~ 0
SDO
Wire Wire Line
	10550 3050 9800 3050
Wire Notes Line
	7350 3800 7350 4600
Wire Notes Line
	7350 4600 8050 4600
Wire Notes Line
	8050 4600 8050 3800
Wire Notes Line
	8050 3800 7350 3800
Text Notes 7650 4700 2    50   ~ 0
Optional
$Comp
L power:+5VA #PWR022
U 1 1 5EF8D755
P 8300 2900
F 0 "#PWR022" H 8300 2750 50  0001 C CNN
F 1 "+5VA" H 8315 3073 50  0000 C CNN
F 2 "" H 8300 2900 50  0001 C CNN
F 3 "" H 8300 2900 50  0001 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 5EF8DB81
P 8300 4250
F 0 "#PWR023" H 8300 4100 50  0001 C CNN
F 1 "+3.3V" H 8315 4423 50  0000 C CNN
F 2 "" H 8300 4250 50  0001 C CNN
F 3 "" H 8300 4250 50  0001 C CNN
	1    8300 4250
	1    0    0    -1  
$EndComp
$Comp
L AD7685BRMZ:AD7685BRMZ U4
U 1 1 5EC3BF59
P 9100 3650
F 0 "U4" H 9100 4620 50  0000 C CNN
F 1 "AD7685BRMZ" H 9100 4529 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 9100 3650 50  0001 L BNN
F 3 "AD7685BRMZ" H 9100 3650 50  0001 L BNN
F 4 "1078337" H 9100 3650 50  0001 L BNN "Field4"
F 5 "59K5237" H 9100 3650 50  0001 L BNN "Field5"
F 6 "MSOP-10" H 9100 3650 50  0001 L BNN "Field6"
F 7 "Analog Devices" H 9100 3650 50  0001 L BNN "Field7"
	1    9100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4050 8200 4450
Wire Wire Line
	8400 4450 8200 4450
Connection ~ 8200 4450
Wire Wire Line
	8200 4450 8200 4550
$Comp
L power:GNDA #PWR025
U 1 1 5EFA17EA
P 8400 2350
F 0 "#PWR025" H 8400 2100 50  0001 C CNN
F 1 "GNDA" H 8405 2177 50  0000 C CNN
F 2 "" H 8400 2350 50  0001 C CNN
F 3 "" H 8400 2350 50  0001 C CNN
	1    8400 2350
	1    0    0    -1  
$EndComp
Connection ~ 8400 2350
$Comp
L power:GNDA #PWR027
U 1 1 5EFA1C4D
P 9350 2350
F 0 "#PWR027" H 9350 2100 50  0001 C CNN
F 1 "GNDA" H 9355 2177 50  0000 C CNN
F 2 "" H 9350 2350 50  0001 C CNN
F 3 "" H 9350 2350 50  0001 C CNN
	1    9350 2350
	1    0    0    -1  
$EndComp
Connection ~ 9350 2350
$Comp
L power:+3.3V #PWR026
U 1 1 5EFA20C4
P 9350 2050
F 0 "#PWR026" H 9350 1900 50  0001 C CNN
F 1 "+3.3V" H 9365 2223 50  0000 C CNN
F 2 "" H 9350 2050 50  0001 C CNN
F 3 "" H 9350 2050 50  0001 C CNN
	1    9350 2050
	1    0    0    -1  
$EndComp
Connection ~ 9350 2050
$Comp
L power:+5VA #PWR024
U 1 1 5EFA2F28
P 8400 2050
F 0 "#PWR024" H 8400 1900 50  0001 C CNN
F 1 "+5VA" H 8415 2223 50  0000 C CNN
F 2 "" H 8400 2050 50  0001 C CNN
F 3 "" H 8400 2050 50  0001 C CNN
	1    8400 2050
	1    0    0    -1  
$EndComp
Connection ~ 8400 2050
Connection ~ 6350 3950
Wire Wire Line
	4050 2000 4050 4450
Wire Notes Line
	3900 3450 3900 6700
Wire Notes Line
	3900 6700 6550 6700
Wire Notes Line
	6550 6700 6550 3450
Wire Notes Line
	3900 3450 6550 3450
Wire Wire Line
	950  2100 2550 2100
Wire Wire Line
	950  2400 2550 2400
Text Notes 7700 1150 0    50   ~ 0
ESR between 1Ohm and 1.5Ohm
$Comp
L Device:C C12
U 1 1 5F387ABF
P 7900 1900
F 0 "C12" V 7648 1900 50  0000 C CNN
F 1 "1uF" V 7739 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7938 1750 50  0001 C CNN
F 3 "~" H 7900 1900 50  0001 C CNN
	1    7900 1900
	0    1    1    0   
$EndComp
Connection ~ 7750 1450
Wire Wire Line
	8050 1450 8050 1900
Wire Wire Line
	7750 1450 7750 1900
Wire Wire Line
	7750 1900 7750 3450
Connection ~ 7750 1900
Wire Wire Line
	8050 2100 8050 1900
Connection ~ 8050 1900
$Comp
L Device:C C94
U 1 1 5F3EAA28
P 5750 1300
F 0 "C94" V 5498 1300 50  0000 C CNN
F 1 "1uF" V 5589 1300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5788 1150 50  0001 C CNN
F 3 "~" H 5750 1300 50  0001 C CNN
	1    5750 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 1550 6000 1550
Wire Wire Line
	6000 1550 6000 1300
Wire Wire Line
	6000 1300 5900 1300
$Comp
L power:GNDA #PWR0162
U 1 1 5F3EC9E9
P 5400 1450
F 0 "#PWR0162" H 5400 1200 50  0001 C CNN
F 1 "GNDA" H 5405 1277 50  0000 C CNN
F 2 "" H 5400 1450 50  0001 C CNN
F 3 "" H 5400 1450 50  0001 C CNN
	1    5400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1450 5400 1300
Wire Wire Line
	5400 1300 5600 1300
Wire Wire Line
	4150 4550 4850 4550
Wire Wire Line
	4150 1900 4150 4550
Wire Wire Line
	4850 4450 4050 4450
$EndSCHEMATC