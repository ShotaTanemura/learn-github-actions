#include <stdio.h>

int main(void) {
    int i = 0;
    printf("start\n", i);
    while (i < 10)
    {
        printf("number: %d\n", i);
        i++;
    }
    printf("end\n", i);
    return 0;
}