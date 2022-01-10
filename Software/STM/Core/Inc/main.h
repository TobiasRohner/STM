/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32g4xx_hal.h"
#include "stm32g4xx_ll_cordic.h"
#include "stm32g4xx_ll_rcc.h"
#include "stm32g4xx_ll_bus.h"
#include "stm32g4xx_ll_crs.h"
#include "stm32g4xx_ll_system.h"
#include "stm32g4xx_ll_exti.h"
#include "stm32g4xx_ll_cortex.h"
#include "stm32g4xx_ll_utils.h"
#include "stm32g4xx_ll_pwr.h"
#include "stm32g4xx_ll_dma.h"
#include "stm32g4xx_ll_spi.h"
#include "stm32g4xx_ll_usart.h"
#include "stm32g4xx_ll_gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define NRST_Pin LL_GPIO_PIN_10
#define NRST_GPIO_Port GPIOG
#define SPI1_MOSI_Pin LL_GPIO_PIN_7
#define SPI1_MOSI_GPIO_Port GPIOA
#define DA_CNV_Pin LL_GPIO_PIN_0
#define DA_CNV_GPIO_Port GPIOB
#define CTRL_LDAC_INV_Pin LL_GPIO_PIN_11
#define CTRL_LDAC_INV_GPIO_Port GPIOB
#define CTRL_SYNC_INV_Pin LL_GPIO_PIN_12
#define CTRL_SYNC_INV_GPIO_Port GPIOB
#define CTRL_RESET_INV_Pin LL_GPIO_PIN_14
#define CTRL_RESET_INV_GPIO_Port GPIOB
#define LED_G_Pin LL_GPIO_PIN_5
#define LED_G_GPIO_Port GPIOB
#define LED_Y_Pin LL_GPIO_PIN_6
#define LED_Y_GPIO_Port GPIOB
#define LED_R_Pin LL_GPIO_PIN_7
#define LED_R_GPIO_Port GPIOB
#define BOOT0_Pin LL_GPIO_PIN_8
#define BOOT0_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

#define MCU_FREQ 96000000
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
