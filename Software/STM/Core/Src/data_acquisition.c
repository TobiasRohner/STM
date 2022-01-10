/*
 * adc.c
 *
 *  Created on: Feb 3, 2021
 *      Author: tobias
 */

#include <data_acquisition.h>
#include "main.h"
#include "stm32g4xx_ll_spi.h"
#include "stm32g4xx_ll_gpio.h"


void ADC_Init() {
	// Set the SDI Pin of the ADC to VIO to enable ~CS mode
	LL_GPIO_SetOutputPin(SPI1_MOSI_GPIO_Port, SPI1_MOSI_Pin);
	// Pull the CNV pin low
	LL_GPIO_ResetOutputPin(DA_CNV_GPIO_Port, DA_CNV_Pin);
}


void ADC_StartConversion() {
	// Pull the CNV pin high to initiate a conversion
	LL_GPIO_SetOutputPin(DA_CNV_GPIO_Port, DA_CNV_Pin);
	// Wait at least 2.2us for the conversion to finish
	// One empty for loop cycle should take at least 3 cycles
	for (volatile int i = 0 ; i < (int)(((uint64_t)2200)*((uint64_t)MCU_FREQ)/3000000000+1) ; ++i);
	// Set CNV low again to get ready for acquisition
	LL_GPIO_ResetOutputPin(DA_CNV_GPIO_Port, DA_CNV_Pin);
}


uint16_t ADC_Readout() {
	// Simply read 16 bits from SPI1
	LL_SPI_Enable(SPI1);
	while(!LL_SPI_IsActiveFlag_BSY(SPI1));
	LL_SPI_Disable(SPI1);	// We only want one frame, so immediately disable SPI1 again
	// Wait until the transaction is finished
	while(!LL_SPI_IsActiveFlag_RXNE(SPI1));
	const uint16_t val = LL_SPI_ReceiveData16(SPI1);
	return val;
}
