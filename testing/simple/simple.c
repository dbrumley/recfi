
int (*sum_func)(int, int);

int sum(int x, int y)
{
    return x + y;
}

int other_sum(int x, int y)
{
    return x + y + 1;
}

int main()
{
    int x = 15;
    int y = 25;

    if(x < 10)
    {
        sum_func = sum;
    }
    else
    {
        sum_func = other_sum;
    }

    x += sum_func(x, y);

    return x;
}
