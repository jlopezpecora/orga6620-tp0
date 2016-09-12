#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
#include "complex.h"

#define VERSION 1.0

#define Z_RE 0
#define Z_IM 0

#define C_RE 0.285
#define C_IM -0.01

#define RESOLUTION_X 640
#define RESOLUTION_Y 480

#define WIDTH 4
#define HEIGHT 4

#define N_MAX 255

#define ERR_ARG 1

static void print_help();
static void print_version();
static void print_invalid_arg(int opt, char* arg);
static int set_resolution(char* res, int* rx, int* ry);
static int set_size(char* val, int* n);
static int set_complex(char* val, complex_t* z);
static void drawJulia(int x, int y, double w, double h, complex_t zc, complex_t c,int N, FILE* file);

const char* short_options = "hvr:c:C:w:H:o:";

static struct option options[] = {
    { "help", no_argument, NULL, 'h' },
    { "version", no_argument, NULL, 'v' },
    { "resolution", required_argument, NULL, 'r' },
    { "center", required_argument, NULL, 'c' },
    { "param", required_argument, NULL, 'C' },
    { "width", required_argument, NULL, 'w' },
    { "height", required_argument, NULL, 'H' },
    { "output", required_argument, NULL, 'o' },
    { 0, 0 }
};

int main(int argc, char** argv) {
    FILE* file = stdout;

    complex_t zc;
    zc.re = Z_RE;
    zc.im = Z_IM;
    
    complex_t c;
    c.re = C_RE;
    c.im = C_IM;
    
    int rx = RESOLUTION_X;
    int ry = RESOLUTION_Y;
    
    int w = WIDTH;
    int h = HEIGHT;

	int param = 0;
	int index = 0;
	while ((param = getopt_long(argc, argv, short_options, options, &index)) != -1) {
		switch (param) {
			case 'h':
				print_help();
				return EXIT_SUCCESS;
			case 'v':
				print_version();
				return EXIT_SUCCESS;
		    case 'r':
				if (set_resolution(optarg, &rx, &ry) != 0) {
                    print_invalid_arg(param, optarg);
                    print_help();
				    return ERR_ARG;				    
				}
				break;
		    case 'c':
				if (set_complex(optarg, &c) != 0) {
                    print_invalid_arg(param, optarg);
                    print_help();
				    return ERR_ARG;				    
				}
				break;
		    case 'C':
				if (set_complex(optarg, &zc) != 0) {
                    print_invalid_arg(param, optarg);
                    print_help();
				    return ERR_ARG;				    
				}
				break;
            case 'w':
                if (set_size(optarg, &w) != 0) {
                    print_invalid_arg(param, optarg);
                    print_help();
				    return ERR_ARG;				    
				}
				break;
            case 'H':
                if (set_size(optarg, &h) != 0) {
                    print_invalid_arg(param, optarg);
                    print_help();
				    return ERR_ARG;				    
				}
				break;
            case 'o':
                if (strlen(optarg) > 0 && optarg[0] == '-') {
                    break;
                }
                errno = 0;
                if ((file = fopen(optarg,"w")) == NULL) {
                    perror("Error on fopen");
                    return ERR_ARG;
                }   
				break;
            case '?':
				print_help();
				return ERR_ARG;
			default:
				print_help();
				return EXIT_SUCCESS;
		}
	} 
    drawJulia(rx, ry, w, h, zc, c,N_MAX, file);
    fclose(file);
    return EXIT_SUCCESS;
}

static void print_version() {
    printf("Version: %-1.1f\n", VERSION);
}

static void print_help() {
	printf("Usage:\n"
           "  tp0 -h\n"
           "  tp0 -v\n"
           "  tp0 -r <axb> -c <> -C <> -w <width> -H <height> -o <filepath>\n"
           "  tp0 < in_file > out_file\n"
           "Options:\n"
           "  -r               Set resolution. [640x480] by default.\n"
           "  -c               Set image center. [0+0i] by default.\n"
           "  -C               Set c value. [0.285-0.01i] by default.\n"
           "  -w               Set width. [4] by default.\n"
           "  -H               Set height. [4] by default.\n"
           "  -o               Set output file. [std] by default.\n"
           "  -h, --help       Print this information and quit.\n"
           "Examples:\n"
           "  tp0 -r 1024x800 -w 24 -H 16 -o out.pgm\n"
           "  cat in.txt | tp0 > out.txt\n");
}

static void print_invalid_arg(int opt, char* arg) {
	printf("Invalid argument <%s> for the option <%c>\n", arg, opt);
}

static int set_resolution(char* res, int* rx, int* ry) {
    int i = 0;
    int x = 0;
    int y = 0;
    while (res[i] != 'x' && res[i] != 'X' && res[i] != '\0') {
        if (!isdigit(res[i])) {
            return -1;
        }
        x = x *10 + (res[i] - '0');
        ++i;
    }
    if (x == 0 || i == strlen(res)) {
        return -1;
    }
    i++;
    while (res[i] != '\0') {
        if (!isdigit(res[i])) {
            return -1;
        }
        y = y *10 + (res[i] - '0');
        ++i;
    }
    if (y == 0) {
        return -1;
    }
    *rx = x;
    *ry = y;
    return 0;
}

static int set_complex(char* val, complex_t* z) {
    if (strlen(val) == 0) {
        printf("A\n");
        return -1;
    }

    int i = 0;
    double re = 0;
    double im = 0;
    
    //RE(z)
    for (i = 1; val[i] != '+' && val[i] != '-' && val[i] != '\0'; ++i) {
        ;
    }
    //copy RE(z) to a new string
    char* re_str = malloc(i+1);
    int j;
    for (j = 0; j < i; ++j) {
        re_str[j] = val[j];
    }
    re_str[j] = '\0';
    
    char *endptr;
    errno = 0;    // To distinguish success/failure after call
    re = strtod(re_str, &endptr);
    if (errno == ERANGE) {  //check overflow or underflow
        perror("out of range");
        return -1;
    }
    if (*endptr != '\0') {  //test for invalid characters
        printf("Re value not a number: <%s>\n", endptr);
        free(re_str);
        return -1;
    }
    free(re_str);
    
    //IM(z)
    char* im_str = val + i; //define img(z) string
        
    //test for character 'i' presence
    if (strlen(im_str) > 0 && im_str[strlen(im_str) - 1] != 'i') {
        printf("i is missing\n");
        return -1;
    }
    im = strtod(im_str, &endptr);
    //test for invalid characters
    if (*endptr != 'i') {
        return -1;
    }
    
    z->re = re;
    z->im = im;
    return 0;
}

static int set_size(char* val, int* n) {
    int i;
    int x = 0;
    for (i = 0; val[i] != '\0'; ++i) {
        if (!isdigit(val[i])) {
            return -1;
        }
        x = x *10 + (val[i] - '0');
    }
    if (x == 0) {
        return -1;
    }
    *n = x;
    return 0;
}

static void drawJulia(int x, int y, double w, double h, complex_t zc, complex_t c,int N, FILE* file){
    double dw=w/x;
    double dh = h/y;
    double re0 = zc.re - w/2;
    double im0 = zc.im + h/2;

    fprintf(file, "P2\n");
    fprintf(file, "# julia.pgm\n");
    fprintf(file, "%d %d\n", x, y);	
    fprintf(file, "%d\n", N);
	 
    for (int j=0; j<y; ++j) {
        for (int i =0; i<x; ++i) {
            complex_t z;           
            complex_map(&z, i, j, dw, dh, re0, im0);
            int brillo = N;
            for (int k=0; k<N-1;++k) {
                if (complex_abs(&z)>2) {
                    brillo = k;
                    break;
                }
                complex_mult(&z,z);
                complex_add(&z,c);
            }
            fprintf(pFile,"%d ",brillo);
        }
	    fprintf(pFile,"\n");
	}
}



