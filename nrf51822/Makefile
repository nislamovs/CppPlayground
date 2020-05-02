BOARD?=sandeepmistry:nRF5:Waveshare_BLE400
#PORT?=/dev/ttyUSB1
HEX_NAME?=./nrf51822_blink.hex

.PHONY: default lint all flash clean

default: lint all flash clean

lint:
	cpplint --extensions=ino --filter=-legal/copyright *.ino

all:
	arduino-cli compile --fqbn $(BOARD) -o $(HEX_NAME) ./
#	sleep 3

flash:
	./upload_firmware.sh $(HEX_NAME)
#	arduino-cli upload --fqbn $(BOARD) -p $(PORT) ./

clean:
	rm -f .*.hex
	rm -f .*.elf
