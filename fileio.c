#include <stdio.h>
#include "fileio.h"
int main()
{
	int r;
	int n_components, n_features;
	long double* transition;
	long double* emission;
	long double* initial;
	//printf(" %g\n", n_features);
	r = read_hmm_coef("./Model_Parameters", &n_components, &n_features, &transition, &emission, &initial);
	
	return 0;
}