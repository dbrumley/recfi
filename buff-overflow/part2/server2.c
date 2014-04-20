/***************************************************************************
file: server2.c
class: 18-732, Spring 2014
assignment: Homework 1
Description : example of server with buffer overflow  
***************************************************************************/



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

/* Stack-setting code (launcher and main) courtesy of and copyright
   Dave O'Hallaron (droh+18730@cs.cmu.edu) */

#ifndef USE_MMAP
#define USE_MMAP
#endif

#ifdef USE_MMAP
#include <sys/mman.h>
#define START_ADDR (void *) 0x55385C00
#endif

#ifdef __CYGWIN__
#include "getopt.h"
#endif


/* Binary code for HLT (halt) instruction */
#define HALT_INSTR 0xF4

#define NORMAL_CNT 1
#define NORMAL_BUFFER_SIZE 32
#define FILESIZE 50
#define CAPSIZE 500
#define COORSIZE 8

uint32_t cookie = 0x55c63594;

/*--------------------------------------------------------------------*/
//global variable declaration

int handler0(char *buf, int fd);
int handler1(char *buf, int fd);
int handler2(char *buf, int fd);
int handler3(char *buf, int fd);
int check_error (char *errorbuf, int nb, int lw);


struct aconnexion {
  int nfd;
  char bufcon[1000];
  int buflen;
  long starttime;
} con[32];

int listen_port = 18732, fdc;
struct timeval tv;
struct tm *ptm;
fd_set origfds;
struct sockaddr_in srv;

int (*handler[])(char *buf, int fd) = {handler0, handler1, handler2, handler3};


/***************************************************************************
 function : handler0
 Description : 
 Parameters : buf
 Returned value : 0 for success, 1 for error
 ***************************************************************************/
int handler0(char *buf, int fd)
{
	char reply[276];
	char errorbuf[100];
	int i=0;
	uint32_t birdie = cookie;

	while(buf[i] != 0)
	{
		if(buf[i] == 'I')
		{
			buf[i] = '1';
		}
		else {
			buf[i] = buf[i];
		}
		i++;
	}

	strcpy(reply, buf);
	
	write(fd, reply, strlen(reply));
		
	if(birdie != cookie) exit(-1);
	return 0;
}

/***************************************************************************
 function : handler1
 Description : 
 Parameters : buf
 Returned value : 0 for success, 1 for error
 ***************************************************************************/
int handler1(char *buf, int fd)
{
	int i;
	char reply[1000];
	char errorbuf[100];
	uint32_t birdie = cookie;

	for(i=0; buf[i] != 0; i++)
	{
		if(buf[i] == 'e' || buf[i] == 'E')
		{
			reply[i] = '3';
		}
		else {
			reply[i] = buf[i];
		}
	}
	
	i = write(fd, reply, strlen(reply));
	i = check_error(errorbuf, i, strlen(reply));
	if (i == 1) 
		printf ("%s", errorbuf);
	
	if(birdie != cookie) exit(-1);
	return i;
}

/***************************************************************************
 function : handler2
 Description : 
 Parameters : buf
 Returned value : 0 for success, 1 for error
 ***************************************************************************/
int handler2(char *buf, int fd)
{
	int i;
	char reply[1000];
	char errorbuf[100];
	uint32_t birdie = cookie;

	for(i=0; buf[i] != 0; i++)
	{
		if(buf[i] == 'A')
		{
			reply[i] = '4';
		}
		else {
			reply[i] = buf[i];
		}
	}
	
	i = write(fd, reply, strlen(reply));
	i = check_error(errorbuf, i, strlen(reply));
	if (i == 1) 
		printf ("%s", errorbuf);
	
	if(birdie != cookie) exit(-1);
	return i;
}

/***************************************************************************
 function : handler3
 Description : 
 Parameters : buf
 Returned value : 0 for success, 1 for error
 ***************************************************************************/
int handler3(char *buf, int fd)
{
	int i;
	char reply[1000];
	char errorbuf[100];
	uint32_t birdie = cookie;
	
	for(i=0; buf[i] != 0; i++)
	{
		if(buf[i] == 'o' || buf[i] == 'O')
		{
			reply[i] = '0';
		}
		else {
			reply[i] = buf[i];
		}
	}
	
	i = write(fd, reply, strlen(reply));
	i = check_error(errorbuf, i, strlen(reply));
	if (i == 1) 
		printf ("%s", errorbuf);
	
	if(birdie != cookie) exit(-1);
	return i;
}


/***************************************************************************
function : close_connec
Description : close a connection
Parameters : aconnec (the connection to close)
Globals : origfds
Local : none
Returned value : none
***************************************************************************/

void close_connec(struct aconnexion *connec) {
  uint32_t birdie = cookie;
FD_CLR((*connec).nfd, &origfds);
  close((*connec).nfd);
  (*connec).nfd =-1;
  if(birdie != cookie) exit(-1);
}


/***************************************************************************
function : check_error
Description : check if an error occured
Parameters : errorbuf (buffer to store a string reporting the error)
             nb (number to check)
             lw (if no error, nb = lw)
Returned value : 0 if error else 1 
***************************************************************************/

int check_error (char *errorbuf, int nb, int lw) {
  uint32_t birdie = cookie;
  if (nb == -1) { 
    sprintf (errorbuf, "Error while writing the response, check your connection, err# : %d\n", errno);
    if(birdie != cookie) exit(-1);
    return 1; 
  } else if (nb < lw) {
    strcpy (errorbuf, "Response partially sent !!\n");
    if(birdie != cookie) exit(-1);
    return 1;
  } else {
    if(birdie != cookie) exit (-1);
    return 0;
  }
}  


/***************************************************************************
function : processbuf
Description : store the received data and send a response back
Parameters : con (info of a connection)
Returned value : 0 if an error occurred, 1 else
***************************************************************************/

int processbuf(struct aconnexion *con) 
{
	int i;
	char *pos;
	char pass[300] = "";
	uint32_t birdie = cookie;
	
	pos = strtok(con->bufcon, "|");
	i = atol(pos);
	if(i < 1 || i > 3)
	{
	  if(birdie != cookie) exit(-1);
	  return 0;
	}

	pos = strtok(NULL, "|");
	strncat(pass, pos, 300);
	
	handler[i](pass, con->nfd);
	
	if(birdie != cookie) exit(-1);
	return 1;
}


/***************************************************************************
function : server
Description : listen to a socket and receive request
Parameters : argc, argv
Returned value : 0 if an error occured 
***************************************************************************/

int server() {
  
	int fd, paramlen, i, freepos, chkpass;
	const int optval =1;
	fd_set readfds;
	int maxfds, next, count, nbyte, int_pos;
	struct sockaddr_in cli;
	struct timeval s_timeout; 
	int cli_len;
	char *start_param_pos, *paramlen_pos;
	int paramlen_offset;
uint32_t birdie = cookie;
	
	//create a socket
	fd = socket(AF_INET, SOCK_STREAM, 0);
	if (fd == -1) 
	{
		printf("error while creating the socket\n");
		return(0);
	}
	
	if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval)) == -1)
	{
		printf("Error while setting socket option, errno: %d\n", errno);
	}
	
	srv.sin_family = AF_INET;
	srv.sin_port = htons(listen_port);
	srv.sin_addr.s_addr = htonl(INADDR_ANY);
	//bind the socket
	if (bind (fd, (struct sockaddr*) &srv, sizeof(srv)) == -1) 
	{
		printf("error while binding %d\n", errno);
		return(0);
	}
	
	//listen
	if (listen (fd, 10)<0) 
	{
		printf("error while trying to listen\n");
		return(0);
	}
	
	maxfds = fd;
	FD_ZERO(&origfds);
	FD_SET(fd, &origfds);
	next=0;
	s_timeout.tv_sec = 1;
	s_timeout.tv_usec = 0;
	printf("server on\n");
	
	//check for request
	while (1) 
	{
		bcopy (&origfds, &readfds, sizeof (origfds));
		select (maxfds +1, &readfds, 0, 0, &s_timeout);
		if (FD_ISSET(fd, &readfds)) 
		{
			if (next < 31) 
			{ 
				printf("new connexion\n");
				cli_len = sizeof(cli);
				con[next++].nfd = accept (fd, (struct sockaddr*) &cli, &cli_len); 
				if (con[next-1].nfd<0) 
				{
					printf("error while accepting %d\n", errno);return(0);
				}
				if (con[next-1].nfd > maxfds) maxfds = con[next-1].nfd;
				gettimeofday(&tv, NULL);
				con[next-1].starttime = tv.tv_sec;
				bzero(con[next-1].bufcon, 1000); 
				con[next-1].buflen = 0;
				FD_SET(con[next-1].nfd, &origfds);
			} else
			{  
				return (0);
			}
		}
		
		//check existing connection
		for (count=0;count<next;count++) 
		{
			if (con[count].nfd <0) 
				continue;
			if (FD_ISSET(con[count].nfd, &readfds)) 
			{
				nbyte = 0;
				nbyte = read(con[count].nfd, &((con[count].bufcon)[con[count].buflen]), 999 - con[count].buflen );
				
				con[count].buflen += nbyte;
				
				if (nbyte == 0) 
				{
					// client has closed the connection
					close_connec(&(con[count]));
				}
				else
				{
					processbuf(&con[count]);
					bzero(con[count].bufcon, 1000);
				} 
				
				gettimeofday(&tv, NULL);
				con[count].starttime = tv.tv_sec; 
			}
		}

		//check if some connections have been idling for more than 5 seconds
		gettimeofday(&tv, NULL);
		for (count=0;count<next;count++) 
		{
			if (con[count].nfd <0) 
				continue;
 
			if ( (tv.tv_sec - con[count].starttime) > 5) 
			{ 
				close_connec(&(con[count]));
			}
		}
		
		//sort the array "con" 
		if (next == 10 % 11)
		{
			freepos = 0;
			for (i=0; i<next; i++) 
			{
				if (con[i].nfd >= 0) 
				{
					if (freepos == i)
					{
						freepos++;
					} 
					else
					{
						con[freepos++] = con[i];
						con[i].nfd = -1;
					}
				}
			}
			next = freepos;
		}
	}

	close (fd);
	if(birdie != cookie) exit(-1);
	return 1;
}

/* New version of launching code.
   Optionally uses MMAP to generate stable stack position */

/* Must put context information in global variables,
   since stack will get messed up */
int global_nitro = 0;
int global_offset = 0;
volatile    void *stack_top;
volatile  void *global_save_stack = NULL;

/* This function makes it possible to shift stack to mapped region */
void launcher(int nitro, int offset)
{
#ifdef USE_MMAP
  void *new_stack;
#endif
  global_nitro = nitro;
  global_offset = offset;

#ifdef USE_MMAP
#define STACK_SIZE 0x100000
  new_stack = mmap(START_ADDR, STACK_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE,
		   MAP_PRIVATE | /*MAP_GROWSDOWN |*/ MAP_ANON,
		   0, 0);
  if (new_stack == MAP_FAILED) {
    fprintf(stderr, "Internal error.  Couldn't use mmap\n");
    exit(1);
  }
  stack_top = new_stack + STACK_SIZE - 8;
  asm("movl %%esp,%%eax ; movl %1,%%esp ; movl %%eax,%0"
      : "=r" (global_save_stack)
      : "r"  (stack_top)
      : "%eax"
      );
#endif
  server();
  //  launch(global_nitro, global_offset);
#ifdef USE_MMAP
  asm("movl %0,%%esp"
      : 
      : "r" (global_save_stack)
      );
  munmap(new_stack, STACK_SIZE);
#endif
}
 
int main(int argc, char** argv) {
  int cookie_tweak = 0;
  int nitro = 1; /* Run in unstable mode? */
  int i;
  int *offsets;
  int cnt = NORMAL_CNT;
  char c;

  // set up random stack offsets for nitro mode
  srandom(cookie);
  cookie_tweak =  random() & 0xFF8;

  offsets = (int *) calloc(cnt, sizeof(int));
  for (i = 0; i < cnt-2; i++)
    offsets[i] = random() & 0x38;
  if  (cnt >= 2)
    offsets[cnt-2] = 0x38;
  offsets[cnt-1] = 0;

  for (i = 0; i < cnt; i++)
    launcher(nitro, offsets[i]+cookie_tweak);  
  
  return 0;
}
