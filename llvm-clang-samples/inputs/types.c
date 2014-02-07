typedef struct {
  double d;
  char c;
  unsigned i;
  char ar[10];
} mystruct;

void *cpy(void *dest, const void *src, unsigned n);

void structadder(mystruct a, mystruct b, mystruct *out) {
  mystruct ss;
  ss.d = a.d + b.d;
  ss.c = a.c + b.c;
  ss.i = a.i + b.i;
  for (int i = 0; i < 10; ++i) {
    ss.ar[i] = a.ar[i] + b.ar[i];
  }
  cpy(out, &ss, sizeof(mystruct));
}

