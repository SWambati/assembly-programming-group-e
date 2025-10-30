#include <stdio.h>

// Declare the assembly function
unsigned long long factorial(int n);

int main() {
    int n;
    unsigned long long result;

    printf("Enter a positive integer: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Error! Factorial of a negative number doesn't exist.\n");
        return 1;
    }

    result = factorial(n);  // Call assembly function

    printf("Factorial of %d = %llu\n", n, result);
    return 0;
}
