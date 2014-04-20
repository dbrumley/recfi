
#include <stdio.h>

int (*sum_func)(int, int);

int sum(int x, int y)
{
    printf("in sum\n");
    return x + y;
}

int other_sum(int x, int y)
{
    printf("in other_sum\n");
    return x + y + 1;
}

int main()
{
    printf("in main\n");
    int x = 15;
    int y = 25;

    if(x < 10)
    {
        printf("setting sum_func to sum\n");
        sum_func = sum;
    }
    else
    {
        printf("setting sum_func to other_sum\n");
        sum_func = other_sum;
    }

    printf("calling sum_func\n");
    x += sum_func(x, y);

    printf("done!\n");
    return x;
}
