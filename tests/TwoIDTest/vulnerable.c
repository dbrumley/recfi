
#include <string.h>
#include <stdio.h>

void malicious()
{
	printf("\n\tHow did we get here??\n\n");
}

void foobar(char *str)
{
	char buf[10];
	strcpy(buf, str);
	
	printf("%s\n", buf);
}

int main(int argc, char *argv[])
{
	if (argc < 2)
	{
		printf("Usage: vulnerable <str>\n");
		return 1;
	}	
	foobar(argv[1]);
	return 0;
}
