#Install `arduino-cli`

Launch command:

`curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh`

Add directory to path,- open `.bashrc` and add to the end of file this line: `export PATH="your-dir:$PATH"`

#Install boards

`arduino-cli core install arduino:avr`

`arduino-cli core install arduino:megaavr`

#Compile project

`arduino-cli compile -b arduino:avr:uno arduino_blink/`

#Program the board

`arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:uno  arduino_blink`


Additional info here: https://arduino.github.io/arduino-cli/installation/