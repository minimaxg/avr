TOOLCHAIN=/usr/bin

CC = $(TOOLCHAIN)/avr-gcc
OBJCOPY = $(TOOLCHAIN)/avr-objcopy
AVRDUDE = avrdude

APP=blinky

all: $(APP).elf

$(APP).elf: $(APP).c
	$(CC) blinky.c -o blinky.elf -mmcu=atmega16

$(APP).hex: $(APP).elf
	$(OBJCOPY) -j .text -j .data -O ihex $(APP).elf $(APP).hex

program: $(APP).hex
	avrdude -c usbtiny -p m16 -e -U flash:w:$(APP).hex

clean:
	rm -f $(APP).elf $(APP).hex
