#include <stdio.h>
#include <string.h>


void function_X()
{
    printf("function X");
}

void function_Y()
{
    printf("function Y");
}

void function_Z()
{
    printf("function Z");
}

void function_B(int b)
{
    void (*func_ptr)();
    if(b)
        func_ptr = function_X;
    else
        func_ptr = function_Y;
    func_ptr(b);
}

void function_C(int c)
{
    void (*func_ptr)();
    if(c)
        func_ptr = function_X;
    else
        func_ptr = function_Z;
    func_ptr(c);
}
int main()
{
    int x = 0;
    //function_B(x);
    //function_C(x);
    //function_Z();
    return 0;
}
