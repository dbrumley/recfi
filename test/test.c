
int global_var = 55;
int global_var2;
int (*sum_func)(int, int);

int sum(int x, int y)
{
  return x + y;
}

int testing(int (*f)(int, int), int a, int b)
{
  return f(a, b);
}

int main()
{
  sum_func = sum;
  int x = 5;
  int y = 25;
  global_var2 = 6;
  x += sum_func(x, y);
  x += sum(global_var, global_var2);
  testing(sum_func, 3, 4);
  return 0;
}
