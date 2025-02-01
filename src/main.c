#include <stdio.h>

int main(void) {
    int i = 0;
    printf("start\n");
    while (i < 10)
    {
        printf("number: %d\n", i);
        i++;
    }
    printf("end\n");
    return 0;
}