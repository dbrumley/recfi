
int global_var = 55;
int global_var2;
int (*sum_func)(int, int);

int sum(int x, int y)
{
    return x + y;
}

int other_sum(int x, int y)
{
    return x + y + 1;
}

int testing(int (*f)(int, int), int a, int b)
{
    return f(a, b);
}

int main()
{
    int x = 15;
    int y = 25;
    global_var2 = 6;
/*
    switch(x)
    {
      case 10:
        y = 20;
	break;
      case 15:
        y = 16;
	break;
      case 16:
        y = 21;
	break;
      case 28:
        y = 31;
	break;
      case 29:
        y = 68;
	break;
      case 50:
        y = 89;
	break;
      case 70:
        y = 89;
	break;
      case 71:
        y = 82;
	break;
      default:
        break;
    }
*/
    if(x < 10)
    {
        sum_func = sum;
    }
    else
    {
        sum_func = other_sum;
    }

    x += sum_func(x, y);
    x += sum(global_var, global_var2);

    testing(sum_func, 3, 4);

    return 0;
}
