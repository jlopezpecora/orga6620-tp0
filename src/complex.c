#include "complex.h"
#include <math.h>


void complex_create(complex_t* z, double re, double im) {
    z->re = re;
    z->im = im;
}

void complex_destroy(complex_t* z) {}

void complex_add(complex_t* z, complex_t w) {
    z->re = z->re + w.re;
    z->im = z->im + w.im;
}

void complex_mult(complex_t* z, complex_t w) {
    double re = z->re;
    double im = z->im;
    z->re = (re*w.re)-(im*w.im);
    z->im = (re*w.im)+(im*w.re);
}

double complex_abs(complex_t* z) {  
   double abs =sqrt((z->re*z->re)+(z->im*z->im));
   return abs;
}

