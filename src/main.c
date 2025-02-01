#include <stdio.h>

int main(void) {
    int i;
    printf("start\n", i);
    while (i < 10)
    {
        printf("number: %d\n", i);
        i++;
    }
    printf("end\n", i);
    return 0;
}