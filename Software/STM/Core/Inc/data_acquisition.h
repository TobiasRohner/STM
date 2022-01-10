/*
 * adc.h
 *
 *  Created on: Feb 3, 2021
 *      Author: tobias
 */

#ifndef INC_DATA_ACQUISITION_H_
#define INC_DATA_ACQUISITION_H_

#include "stm32g4xx_hal.h"


// Initialize all GPIO Pins to the correct value for ADC operation
void ADC_Init();
// Start a conversion operation. At least 4us must pass between two calls to this function!
void ADC_StartConversion();
// Read the converted value from the ADC.
uint16_t ADC_Readout();


#endif /* INC_DATA_ACQUISITION_H_ */
