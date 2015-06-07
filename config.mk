#
# Copyright (c) 2011 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level Source code directory relative to this project directory.
PRJ_PATH = src
# Path to build artifacts (objects and other compilation products)
BUILD_DIR = output/obj

# Target CPU architecture: cortex-m3, cortex-m4
ARCH = cortex-m3

# Target part: none, sam3n4 or sam4l4aa
PART = sam3x8e

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET_FLASH = freertos_demo_flash.elf
TARGET_SRAM = freertos_demo_sram.elf

# List of C source files.
CSRCS = \
       asf/common/services/clock/sam3x/sysclk.c               \
       asf/common/services/freertos/sam/freertos_usart_serical.c \
       asf/common/utils/interrupt/interrupt_sam_nvic.c        \
       asf/sam/boards/arduino_due_x/init.c                    \
       asf/sam/drivers/pio/pio.c                              \
       asf/sam/drivers/pio/pio_handler.c                      \
       asf/sam/drivers/pmc/pmc.c                              \
       asf/sam/drivers/usart/usart.c                          \
       asf/sam/utils/cmsis/sam3x/source/templates/exceptions.c \
       asf/sam/utils/cmsis/sam3x/source/templates/gcc/startup_sam3x.c \
       asf/sam/utils/cmsis/sam3x/source/templates/system_sam3x.c \
       asf/thirdparty/FreeRTOS/list.c   \
       asf/thirdparty/FreeRTOS/queue.c  \
       asf/thirdparty/FreeRTOS/tasks.c  \
       asf/thirdparty/FreeRTOS/timers.c \
       asf/thirdparty/FreeRTOS/portable/GCC/ARM_CM3/port.c \
       asf/thirdparty/FreeRTOS/portable/MemMang/heap_4.c \
       Common-Demo-Source/BlockQ.c \
       Common-Demo-Source/blocktim.c \
       Common-Demo-Source/comtest.c \
       Common-Demo-Source/countsem.c \
       Common-Demo-Source/death.c \
       Common-Demo-Source/dynamic.c \
       Common-Demo-Source/flash_timer.c \
       Common-Demo-Source/GenQTest.c \
       Common-Demo-Source/integer.c \
       Common-Demo-Source/PollQ.c \
       Common-Demo-Source/recmutex.c \
       Common-Demo-Source/semtest.c \
       main.c \
       main_blinky.c \
       main_full.c \
       ParTest.c \
       serial.c 
       

# List of assembler source files.
ASSRCS = 

# List of include paths.
INC_PATH = \
       asf/common/boards                                      \
       asf/common/services/clock                              \
       asf/common/services/gpio                               \
       asf/common/services/ioport                             \
       asf/common/services/freertos/sam                       \
       asf/common/utils                                       \
       asf/sam/boards                                         \
       asf/sam/boards/arduino_due_x                           \
       asf/sam/drivers/pio                                    \
       asf/sam/drivers/pmc                                    \
       asf/sam/drivers/usart                                  \
       asf/sam/utils                                          \
       asf/sam/utils/cmsis/sam3x/include                      \
       src/asf/sam/utils/cmsis/sam3x/include/component        \
       asf/sam/utils/cmsis/sam3x/source/templates             \
       asf/sam/utils/header_files                             \
       asf/sam/utils/preprocessor                             \
       asf/thirdparty/CMSIS/Include                           \
       asf/thirdparty/CMSIS/Lib/GCC                           \
       asf/thirdparty/FreeRTOS/include                        \
       asf/thirdparty/FreeRTOS/portable/GCC/ARM_CM3           \
       Common-Demo-Source/include        \
       config \
       ./ 

# Additional search paths for libraries.
LIB_PATH =  \
       asf/thirdparty/CMSIS/Lib/GCC                          

# List of libraries to use during linking.
LIBS =  \
       arm_cortexM3l_math                                 \
       m                                                 

# Path relative to top level directory pointing to a linker script.
LINKER_SCRIPT_FLASH = asf/sam/utils/linker_scripts/sam3x/sam3x8/gcc/flash.ld
LINKER_SCRIPT_SRAM  = asf/sam/utils/linker_scripts/sam3x/sam3x8/gcc/sram.ld

# Path relative to top level directory pointing to a linker script.
DEBUG_SCRIPT_FLASH = sam/boards/arduino_due_x/debug_scripts/gcc/arduino_due_x_flash.gdb
DEBUG_SCRIPT_SRAM  = sam/boards/arduino_due_x/debug_scripts/gcc/arduino_due_x_sram.gdb

# Project type parameter: all, sram or flash
PROJECT_TYPE        = flash

# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS = 

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -O1

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = 

# Extra flags to use when compiling.
CFLAGS = 

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D ARM_MATH_CM3=true                               \
       -D BOARD=ARDUINO_DUE_X                             \
       -D UDD_ENABLE                                      \
       -D __FREERTOS__                                    \
       -D __SAM3X8E__                                     \
       -D printf=iprintf                                  \
       -D scanf=iscanf

# Extra flags to use when linking
LDFLAGS = \

# Pre- and post-build commands
PREBUILD_CMD = 
POSTBUILD_CMD = 
