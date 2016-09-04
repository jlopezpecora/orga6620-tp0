#include "complex.h"

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

}

double complex_abs(complex_t* z) {
    return 0;
}

