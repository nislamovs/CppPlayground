# PIC MCU blink example.

- Compiler

Install GNU PIC Utils:
```
sudoa apt-get install subversion
svn checkout svn://svn.code.sf.net/p/gputils/code/trunk .
cd gputils
make -j
sudo make install
```

Install latest `automake`:
```
wget http://ftp.de.debian.org/debian/pool/main/a/automake-1.16/automake_1.16.2-3_all.deb
sudo dpkg -i automake_1.16.2-3_all.deb
```

```
sudo apt-get install bison flex libboost-dev g++ texinfo zlib1g-dev autoconf-archive libtool
wget https://netix.dl.sourceforge.net/project/sdcc/sdcc-linux-amd64/4.0.0/sdcc-4.0.0-amd64-unknown-linux2.5.tar.bz2
tar -xvf sdcc-4.0.0-amd64-unknown-linux2.5.tar.bz2
cd sdcc-4.0.0
sudo cp -r * /usr/local
```

- Firmware programming software installation:

```
sudo apt-get install libusb-dev libusb-1.0-0-dev libudev-dev
wget http://ww1.microchip.com/downloads/en/DeviceDoc/pk2cmdv1.20LinuxMacSource.tar.gz
tar -xzf pk2cmdv1.20LinuxMacSource.tar.gz
cd pk2cmdv1.20LinuxMacSource ;
make linux
sudo make install
sudo cp PK2DeviceFile.dat /usr/local/bin/
sudo cp PK2V023200.hex /usr/local/bin/
```

Then connect PickIt2 to usb and run : `pk2cmd -?v`

```
Response should look like this :
-------------------------------
Executable Version:    1.20.00
Device File Version:   1.55.00
OS Firmware Version:   2.32.00


Operation Succeeded
-------------------------------
```

Then setup device autodetect:

sudo touch /etc/udev/rules.d/99-pickit2.rules
sudo gedit /etc/udev/rules.d/99-pickit2.rules

Add there : `SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device",SYSFS{idVendor}=="04d8" , SYSFS{idProduct}=="0033", MODE="0666"`

/etc/init.d/udev restart

Then connect PickIt2 to usb and run : `pk2cmd -P`
```
Response should look like this :
Auto-Detect: Found part PIC16F630
```

### Compile 

    sdcc --use-non-free -mpic14 -p16f690 blink.c

### Upload 

    pk2cmd -PPIC16f690 -Fblink.hex -M -A5.0 -T


- Additional info :

https://nathandumont.com/blog/setting-up-pk2cmd-on-ubuntu
https://hackaday.com/2010/11/03/how-to-program-pics-using-linux/
https://www.mexchip.com/en/2010/07/how-to-use-the-pickit2-programmer-under-linux/
https://gputils.sourceforge.io/
https://digibird1.wordpress.com/pickit2-programming-with-mplabx-pic16f690-uart-adc/
https://github.com/brooksbp/pic16f690-examples
http://sdcc.sourceforge.net/
