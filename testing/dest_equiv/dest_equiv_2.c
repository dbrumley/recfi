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

int function_W(int w, int w2)
{
    return w+4;
}

int function_V(int v, int v2)
{
    return v+5;
}

int function_A( int (*fptr)(int, int), int a)
{
    int (*func_ptr)(int, int);
    func_ptr = fptr;
    int res = func_ptr(a, a);
    return 0;
}

int function_B(int b)
{
    int (*func_ptr2)(int);
    if( b == 0 )
    {
        func_ptr2 = function_X;
    }
    else
    {
        func_ptr2 = function_Y;
    }
    int res = func_ptr2(b);
    return 0;
}

int function_C(int c)
{
    int (*func_ptr2)(int);
    if( c == 0 )
    {
        func_ptr2 = function_Y;
    }
    else
    {
        func_ptr2 = function_Z;
    }
    int res = func_ptr2(c);
    return 0;
}

int function_D(int d)
{
    int (*func_ptr2)(int);
    if( d == 0 )
    {
        func_ptr2 = function_X;
    }
    else
    {
        func_ptr2 = function_X;
    }
    int res = func_ptr2(d);
    return 0;
}

int main()
{
    int x = 4;
    function_A(function_W, x);
    function_A(function_W, x);
    function_B(x);
    function_C(x);
    printf("Hello world\n");
    x = 0;
    int y = 40 * 2;
    return 0;
}
