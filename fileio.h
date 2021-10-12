#include <stdio.h>
#include <string.h>

int read_hmm_coef(char path_hmm[], int *num_components, int *num_features, long double** transition, long double** emission, long double** initial)
{
	FILE* fp = NULL;
	int n_components, n_features;
	int line_num_file;
	char line[512];
	long double* transition_mat = malloc(n_components * n_components);
	long double* emission_mat = malloc(n_components * n_features);
	long double* initial_mat = malloc(n_components);
	char* ptr;
	char path_hmm_cpy[40];
	char path[40] = "";
	
	strcpy(path_hmm_cpy, path_hmm);
	if (path_hmm[0] == '\0')
	{
		strcpy(path_hmm_cpy, ".");
	}

	// Read number of components (states)
	strcpy(path, path_hmm_cpy);
	strcat(path, "/N_Components.txt");
	fp = fopen(path, "r");
	if (fgets(line, sizeof(line), fp)) {
		n_components = strtol(line, &ptr, 10);
		*num_components = n_components;
	}
	else {
		printf("No content in N_Components.txt is detected, or make sure the path is right. ");
		return 0;
	}
	fclose(fp);

	// Read number of features (observations)
	strcpy(path, path_hmm_cpy);
	strcat(path, "/N_Features.txt");
	fp = fopen(path, "r");
	if (fgets(line, sizeof(line), fp)) {
		n_features = strtol(line, &ptr, 10);
		*num_features = n_features;
	}
	else {
		printf("No content in N_Features.txt is detected");
		return 0;
	}
	fclose(fp);
	// Read transition probability matrix
	line_num_file = 0;
	strcpy(path, path_hmm_cpy);
	strcat(path, "/Transition_Probability_Matrix.txt");
	fp = fopen(path, "r");
	while (fgets(line, sizeof(line), fp)) {
		sscanf(line, "%lf", &transition_mat[line_num_file]);
		//printf("%g\n", transition_mat[line_num_file]);
		line_num_file += 1;
	}

	if (line_num_file != n_components * n_components) {
		printf("Length of Transition_Probability_Matrix [%i] does not match the given number of components [%i]", line_num_file, n_components * n_components);
		return 0;
	}
	fclose(fp);

	// Read emission probability matrix
	line_num_file = 0;
	strcpy(path, path_hmm_cpy);
	strcat(path, "/Emission_Probability_Matrix.txt");
	fp = fopen(path, "r");
	while (fgets(line, sizeof(line), fp)) {
		sscanf(line, "%lf", &emission_mat[line_num_file]);
		//printf("%g\n", emission_mat[line_num_file]);
		line_num_file += 1;
	}
	if (line_num_file != n_components * n_features) {
		printf("Length of Emission_Probability_Matrix [%i] does not match the given number of components [%i]", line_num_file, n_components * n_features);
		return 0;
	}
	fclose(fp);

	// Read initial probability matrix
	line_num_file = 0;
	strcpy(path, path_hmm_cpy);
	strcat(path, "/Initial_Probability_Matrix.txt");
	fp = fopen(path, "r");
	while (fgets(line, sizeof(line), fp)) {
		sscanf(line, "%lf", &initial_mat[line_num_file]);
		//printf("%g\n", initial_mat[line_num_file]);
		line_num_file += 1;
	}
	if (line_num_file != n_components) {
		printf("Length of Initial_Probability_Matrix [%i] does not match the given number of components [%i]", line_num_file, n_components);
		return 0;
	}
	fclose(fp);
	*transition = transition_mat;
	*emission = emission_mat;
	*initial = initial_mat;

	
	return 1;
}