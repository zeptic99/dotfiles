#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *fp = fopen("/sys/class/hwmon/hwmon3/temp1_max", "r");
    if (fp == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }
    
    int temp;
    fscanf(fp, "%d", &temp);
    fclose(fp);

    printf("Temperature: %d\n", temp);
    return EXIT_SUCCESS;
}
