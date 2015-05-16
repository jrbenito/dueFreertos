# dueFreertos
This repository will experiment with Arduino Due board running FreeRTOS, the intend is not to generate code but to understand basic directory structure necessary (starting with Atmel ASF examples)

=== Compile ===
cd thirdparty/freertos/demo/peripheral_control/sam3x8e_arduino_due_x/gcc
make

obs: this works with gnu gcc arm toolchain (can use the arduino one or download one yourself)
     ubuntu's gnu-arm-none toolchain might work too
     I used ARM toolchain provided by Terry at https://launchpad.net/~terry.guo/+archive/ubuntu/gcc-arm-embedded
     Windows version will be found at https://launchpad.net/gcc-arm-embedded
     Again: the one provided by arduino shall work too

=== Flash ===
Easy way using BOSSA command line, Due board shall be connect through the USB programming port

$ stty -F /dev/ttyACM0 1200; bossac --port=ttyACM0 -U true -e -w -v -b freertos_peripheral_control_flash.bin -R
(remember to change ttyACM0 to your correpondent serial port)
This connects to your due usb programming port at 1200 thus triggering flash mode and let Bossa do the magic. This is the way Arduino IDE uses to flash its sketches.



Using SAM-BA from Atmel:
- erase the divice by pressing erase button on the board
- follow SAM-BA README instructions
