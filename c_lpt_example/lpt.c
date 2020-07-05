#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/io.h>
#include <sys/types.h>
#include <fcntl.h>

#define BASEPORT 0x378 /* lp1 */

int main() {
	char c;
	int n, tem;
	
	printf("Hit any key to stop\n");
	
	//set permissions to access port
	if (ioperm(BASEPORT, 1, 1)) {perror("ioperm"); exit(1);}
	
	tem = fcntl(0, F_GETFL, 0);
	fcntl (0, F_SETFL, (tem | O_NDELAY));
	
	//main loop where actual blinking is done
	while (1) {
		//if some key is pressed, break out from loop
		n = read(0, &c, 1);
		if (n > 0) break;
		
		//write 'on' bit on all data pins and wait 1/4 second
		outb(255, BASEPORT);
		usleep(3000000);
		
		//write 'off' bit on all data pins and wait 1/4 second
		outb(0, BASEPORT);
		usleep(3000000);
	}
	
	fcntl(0, F_SETFL, tem);
	outb(0, BASEPORT);
	
	//take away permissions to access port
	if (ioperm(BASEPORT, 3, 0)) {perror("ioperm"); exit(1);}
	
	exit(0);
}

