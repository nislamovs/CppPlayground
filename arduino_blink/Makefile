BOARD?=arduino:avr:uno
PORT?=/dev/ttyUSB0

.PHONY: default lint all flash clean

default: lint all flash clean

lint:
	cpplint --extensions=ino --filter=-legal/copyright *.ino

all:
	arduino-cli compile --fqbn $(BOARD) ./

flash:
	arduino-cli upload --fqbn $(BOARD) -p $(PORT) ./

clean:
	rm -f .*.hex
	rm -f .*.elf
