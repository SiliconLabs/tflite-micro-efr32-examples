/***************************************************************************//**
 * @file
 * @brief TFLite-Micro Hello World example functions
 *******************************************************************************
 * # License
 * <b>Copyright 2022 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * SPDX-License-Identifier: Zlib
 *
 * The licensor of this software is Silicon Laboratories Inc.
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 ******************************************************************************/
#include "tflite_micro_hello_world.h"
#include "main_functions.h"
#include "sl_sleeptimer.h"
#include "sl_pwm_instances.h"
#include "sl_pwm.h"

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
void tflite_micro_hello_world_init(void)
{
  sl_pwm_start(&sl_pwm_led0);
  setup();
}

/***************************************************************************//**
 * Ticking function.
 ******************************************************************************/
void tflite_micro_hello_world_process_action(void)
{
  // Delay between model inferences to simplify visible output
  sl_sleeptimer_delay_millisecond(100);
  loop();
}
