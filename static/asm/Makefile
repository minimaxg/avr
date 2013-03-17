TOOLCHAIN=/usr/bin

AS = $(TOOLCHAIN)/avr-as
LD = $(TOOLCHAIN)/avr-ld
OBJCOPY = $(TOOLCHAIN)/avr-objcopy
AVRDUDE = avrdude

APP=static

all: $(APP).o

$(APP).o: $(APP).asm
	$(AS) -mmcu=atmega16 -o $(APP).o $(APP).asm

$(APP).elf: $(APP).o
	$(LD) -o $(APP).elf $(APP).o

$(APP).hex: $(APP).elf
	$(OBJCOPY) --output-target=ihex $(APP).elf $(APP).hex

program: $(APP).hex
	avrdude -c usbtiny -p m16 -e -U flash:w:$(APP).hex

clean:
	rm -f $(APP).elf $(APP).hex $(APP).o
