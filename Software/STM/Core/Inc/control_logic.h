/*
 * dac.h
 *
 *  Created on: Jan 29, 2021
 *      Author: tobias
 */

#ifndef INC_CONTROL_LOGIC_H_
#define INC_CONTROL_LOGIC_H_

#include "stm32g4xx_hal.h"


typedef enum {
	DAC_CMD_NOOP                            = 0b00000000,
	DAC_CMD_WRITE_INPUT_REG                 = 0b00010000,
	DAC_CMD_UPDATE_REG                      = 0b00100000,
	DAC_CMD_UPDATE_CHANNEL                  = 0b00110000,
	DAC_CMD_SWITCH_POWER                    = 0b01000000,
	DAC_CMD_LDAC_MASK_REG                   = 0b01010000,
	DAC_CMD_RESET                           = 0b01100000,
	DAC_CMD_GAIN_SETUP_REG                  = 0b01110000,
	DAC_CMD_DAISY_CHAIN_ENABLE              = 0b10000000,
	DAC_CMD_READBACK_ENABLE                 = 0b10010000,
	DAC_CMD_UPDATE_CHANNELS_FROM_INPUT_REGS = 0b10100000,
	DAC_CMD_UPDATE_CHANNELS_FROM_INPUT      = 0b10110000
} DAC_Cmd;


typedef enum {
	DAC_ADDR_0 = 0b00000000,
	DAC_ADDR_1 = 0b00000001,
	DAC_ADDR_2 = 0b00000010,
	DAC_ADDR_3 = 0b00000011,
	DAC_ADDR_4 = 0b00000100,
	DAC_ADDR_5 = 0b00000101,
	DAC_ADDR_6 = 0b00000110,
	DAC_ADDR_7 = 0b00000111,
	DAC_ADDR_X_COARSE = DAC_ADDR_0,
	DAC_ADDR_X_FINE   = DAC_ADDR_1,
	DAC_ADDR_Y_COARSE = DAC_ADDR_2,
	DAC_ADDR_Y_FINE   = DAC_ADDR_3,
	DAC_ADDR_Z_COARSE = DAC_ADDR_4,
	DAC_ADDR_Z_FINE   = DAC_ADDR_5,
	DAC_ADDR_BIAS     = DAC_ADDR_6,
	DAC_ADDR_TIP      = DAC_ADDR_7
} DAC_Addr;


// Initialize all GPIO Pins to the correct value for DAC operation
void DAC_Init();
// Hardware Signal to update DAC registers from input registers asynchonously
void DAC_HW_LoadDAC();
// Hardware Reset
void DAC_HW_Reset();
// Send an arbitrary command to the DAC
void DAC_WriteCmd(DAC_Cmd cmd, DAC_Addr addr, uint16_t data);

// Increment the given output of the piezo axis. Return 1 if overflow to high dac channel occurs
int ControlLogic_IncrementCompoundDAC(uint16_t calibration, uint16_t *high, uint16_t *low, uint16_t n);
// Decrement the given output of the piezo axis. Return 1 if overflow to high dac channel occurs
int ControlLogic_DecrementCompoundDAC(uint16_t calibration, uint16_t *high, uint16_t *low, uint16_t n);



#endif /* INC_CONTROL_LOGIC_H_ */
