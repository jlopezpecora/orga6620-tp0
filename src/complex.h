typedef struct complex {
    double re;
    double im;
} complex_t;

void complex_create(complex_t* z, double re, double im);

void complex_destroy(complex_t* z);

void complex_add(complex_t* z, complex_t w);

void complex_mult(complex_t* z, complex_t w);

double complex_abs(complex_t* z);

void complex_map(complex_t* z, int i, int j, double dw, double dh, double re0, double im0);
