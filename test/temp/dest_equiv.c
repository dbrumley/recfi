#include <stdio.h>

int function_X(char* arg_x)
{
    char arg_cpy[10];
    strcpy(arg_x, arg_cpy);
    printf("X+-");
}

int function_Y(char* arg_y)
{
    char arg_cpy[10];
    strcpy(arg_y, arg_cpy);
    printf("Y+-");
}

int function_Z(char* arg_z)
{
    char arg_cpy[10];
    strcpy(arg_z, arg_cpy);
    printf("Z+-");
}

int function_A(char* arg)
{
    printf("A++");
    int (*func_ptr)();
    char arg_cpy[10];
    if( arg == 0 )
    {
        func_ptr = function_X();
    }
    else
    {
        func_ptr = function_Y();
    }
    strcpy(arg, arg_cpy);
    func_ptr(arg_cpy);
    printf("A--");
}

int function_B(char* arg)
{
    printf("B++");
    int (*func_ptr)();
    char arg_cpy[10];
    if( arg == 0 )
    {
        func_ptr = function_Y();
    }
    else
    {
        func_ptr = function_Z();
    }
    strcpy(arg, arg_cpy);
    func_ptr(arg_cpy);
    printf("B--");
}

int main()
{
    char* input = "";
    scanf ("%s", input);    
    char* input2 = "";
    scanf ("%s", input2);    
    functionA(input);
    functionB(input2)
    return 0;
}
