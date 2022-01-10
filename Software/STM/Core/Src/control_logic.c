/*
 * dac.c
 *
 *  Created on: Jan 29, 2021
 *      Author: tobias
 */

#include <control_logic.h>
#include "main.h"
#include "stm32g4xx_ll_spi.h"



void DAC_Init() {
	LL_GPIO_SetOutputPin(CTRL_LDAC_INV_GPIO_Port, CTRL_LDAC_INV_Pin);
	LL_GPIO_SetOutputPin(CTRL_SYNC_INV_GPIO_Port, CTRL_SYNC_INV_Pin);
	LL_GPIO_SetOutputPin(CTRL_RESET_INV_GPIO_Port, CTRL_RESET_INV_Pin);
}


void DAC_HW_LoadDAC() {
	LL_GPIO_ResetOutputPin(CTRL_LDAC_INV_GPIO_Port, CTRL_LDAC_INV_Pin);
	// TODO: Make sure this delay is always at least 8ns
	// One store operation takes 2 cycles. So we should be good up  to
	// a FCLK of 250MHz
	LL_GPIO_SetOutputPin(CTRL_LDAC_INV_GPIO_Port, CTRL_LDAC_INV_Pin);
}


void DAC_HW_Reset() {
	LL_GPIO_ResetOutputPin(CTRL_RESET_INV_GPIO_Port, CTRL_RESET_INV_Pin);
	// TODO: Make sure this delay is always at least 10ns
	// One store operation takes 2 cycles. So we should be good up  to
	// a FCLK of 200MHz
	LL_GPIO_SetOutputPin(CTRL_RESET_INV_GPIO_Port, CTRL_RESET_INV_Pin);
}


void DAC_WriteCmd(DAC_Cmd cmd, DAC_Addr addr, uint16_t data) {
	// Write sequence begins when bringing ~SYNC low
	LL_GPIO_ResetOutputPin(CTRL_SYNC_INV_GPIO_Port, CTRL_SYNC_INV_Pin);
	// TODO: Make sure this delay is always at least 11ns
	// Transmit the command bytes
	LL_SPI_Enable(SPI2);
	while (!LL_SPI_IsActiveFlag_TXE(SPI2));
	LL_SPI_TransmitData8(SPI2, ((uint8_t)cmd) | ((uint8_t)addr));
	while (!LL_SPI_IsActiveFlag_TXE(SPI2));
	//LL_SPI_TransmitData16(SPI2, data);
	LL_SPI_TransmitData8(SPI2, data >> 8);
	while (!LL_SPI_IsActiveFlag_TXE(SPI2));
	LL_SPI_TransmitData8(SPI2, data);
	// Write sequence ends with bringing ~SYNC high
	while (LL_SPI_IsActiveFlag_BSY(SPI2) || !LL_SPI_IsActiveFlag_TXE(SPI2));
	LL_SPI_Disable(SPI2);
	// TODO: Make sure this delay is always at least 4ns
	LL_GPIO_SetOutputPin(CTRL_SYNC_INV_GPIO_Port, CTRL_SYNC_INV_Pin);
}


int ControlLogic_IncrementCompoundDAC(uint16_t calibration, uint16_t *high, uint16_t *low, uint16_t n) {
	int carry = 0;
	n += *low;
	while (n >= calibration) {
		n -= calibration;
		*high += 1;
		carry = 1;
	}
	*low = n;
	return carry;
}


int ControlLogic_DecrementCompoundDAC(uint16_t calibration, uint16_t *high, uint16_t *low, uint16_t n) {
	int carry = 0;
	while (n > calibration) {
		n -= calibration;
		*high -= 1;
		carry = 1;
	}
	if (n > *low) {
		*high -= 1;
		*low = calibration - (n - *low);
		carry = 1;
	}
	else {
		*low -= n;
	}
	return carry;
}
