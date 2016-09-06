#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include "complex.h"

#define VERSION 1.0
#define NO_ARGS 0

static void print_help();
static void print_version();
static void drawJulia(int x, int y, double w, double h, complex_t zc, complex_t c,int N);

const char* short_options = "hV";

static struct option options[] = {
    { "help", NO_ARGS, NULL, 'h' },
    { "version", NO_ARGS, NULL, 'V' },
    { 0, 0 }
};

int main(int argc, char** argv) {
	int param = 0;
	int index = 0;
	if((param = getopt_long(argc, argv, short_options, options, &index)) != -1) {
		switch (param) {
			case 'h':
				print_help();
				break;
			case 'V':
				print_version();
				break;
			default:
				print_help();
				break;
		}
	} else {
		complex_t zc;
		zc.re = 10;
		zc.im = 5;
		complex_t c;
		c.re = 10;
		c.im = 2;
		int x = 100;	
		int y = 100;
		double w = 1000;
		double h = 1000;
             	int N = 255;
        	drawJulia(x,y,w,h,zc,c,N);
   	}
    return EXIT_SUCCESS;
}

static void print_version() {
    printf("Version: %-1.1f\n", VERSION);
}

static void print_help() {
	printf("Usage:\n"
           "  tp0 -h\n"
           "  tp0 -V\n"
           "  tp0 < in_file > out_file\n"
           "Options:\n"
           "  -r    set resolution. [640x480] by default.\n"
           "  -c    set image center. [0+0i] by default.\n"
           "  -C    set c value. [0.285-0.01i] by default.\n"
           "  -w    set width. [4] by default.\n"
           "  -h, --help       Print this information and quit.\n"
           "Examples:\n"
           "  tp0 < in.txt > out.txt\n"
           "  cat in.txt | tp0 > out.txt\n");
}

static void pixelToComplex(complex_t* z, int i, int j, double dw, double dh, double re0, double im0){
         
	double re = re0+dw/2+dw*i;
        double im = im0-dh/2-dh*j;
	complex_create(z,re,im);
}

static void drawJulia(int x, int y, double w, double h, complex_t zc, complex_t c,int N){
	FILE* pFile;
	pFile = fopen("julia.gpg","w");
	double dw=w/x;
	double dh = h/y;
	double re0 = zc.re - w/2;
	double im0 = zc.im + h/2;

	for (int j=0; j<y; ++j){
	    for (int i =0; i<x; ++i){
		complex_t* z = malloc(sizeof(complex_t));            
    		pixelToComplex(z, i, j, dw, dh, re0, im0);
	        int brillo = N;
	        for (int k=0; k<N-1;++k){
	        	if (complex_abs(z)>2){
		            brillo = k;
		            break;
			}
			complex_mult(z,*z);
			complex_add(z,c);
		}
		fprintf(pFile,"%d",brillo);
		free(z);
	    }
	    fprintf(pFile,"\n");
	}
	fclose(pFile);
}



