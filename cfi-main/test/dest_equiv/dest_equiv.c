#include <stdio.h>
#include <string.h>

int function_X(char* arg_x)
{
    char arg_cpy[10];
    strcpy(arg_x, arg_cpy);
    printf("\tX+-\n");
    return 0;
}

int function_Y(char* arg_y)
{
    char arg_cpy[10];
    strcpy(arg_y, arg_cpy);
    printf("\tY+-\n");
    return 0;
}

int function_Z(char* arg_z)
{
    char arg_cpy[10];
    strcpy(arg_z, arg_cpy);
    printf("\tZ+-\n");
    return 0;
}

int function_A(char* arg)
{
    printf("A++\n");
    int (*func_ptr)();
    char arg_cpy[10];
    if( strcmp(arg, "first")  == 0 )
    {
        func_ptr = function_X;
    }
    else
    {
        func_ptr = function_Y;
    }
    strcpy(arg, arg_cpy);
    func_ptr(arg_cpy);
    printf("A--\n");
    return 0;
}

int function_B(char* arg)
{
    printf("B++\n");
    int (*func_ptr)();
    char arg_cpy[10];
    if( strcmp(arg, "second") == 0 )
    {
        func_ptr = function_Y;
    }
    else
    {
        func_ptr = function_Z;
    }
    strcpy(arg, arg_cpy);
    func_ptr(arg_cpy);
    printf("B--\n");
    return 0;
}

int main()
{
    char input[10];
    scanf ("%s", input);    
    char input2[10];
    scanf ("%s", input2);    
    function_A(input);
    function_B(input2);
    return 0;
}
