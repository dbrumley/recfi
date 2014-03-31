#include <stdio.h>
#include <string.h>

int function_Y(int y)
{
    return y+2;
}

int function_Z(int z)
{
    return z+3;
}

int function_X(int x)
{
    return x+1;
}

int function_W(int w)
{
    return w+4;
}

int function_A( int (*fptr)(int), int a)
{
    int (*func_ptr)();
    func_ptr = fptr;
    int res = func_ptr(a);
    return 0;
}

int function_B(int b)
{
    int (*func_ptr2)();
    if( b == 0 )
    {
        func_ptr2 = function_Y;
    }
    else
    {
        func_ptr2 = function_Z;
    }
    int res = func_ptr2(b);
    return 0;
}

int function_C(int c)
{
    int (*func_ptr2)();
    if( c == 0 )
    {
        func_ptr2 = function_Y;
    }
    else
    {
        func_ptr2 = function_X;
    }
    int res = func_ptr2(c);
    return 0;
}

int main()
{
    int x = 4;
    function_A(function_W, x);
    function_A(function_W, x);
    printf("Hello world\n");
    x = 0;
    int y = 40 * 2;
    function_B(x);
    return 0;
}
