
#include <string.h>
#include <stdio.h>

void malicious()
{
	printf("\n\tHow did we get here??\n\n");
}

void format_age(char *age)
{
	printf("\n\tYou are %s years old!\n\n", age);
}

void format_name(char *name)
{
	printf("\n\tYour name is %s!\n\n", name);
}

void call_format(void (*format_func)(), char *str)
{

	char buf[10];
	strcpy(buf, str);

	format_func(buf);
}

int main(int argc, char *argv[])
{
	if (argc < 3)
	{
		printf("Usage: vulnerable <string> <format>\n");
		return -1;
	}

	void (*format_func)();
	if (!strncmp(argv[2],"name",4))
		format_func = format_name;
	else if (!strncmp(argv[2],"age",3))
		format_func = format_age;

	call_format(format_func, argv[1]);
	return 0;
}
