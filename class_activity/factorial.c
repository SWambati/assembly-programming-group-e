// Write a C program to calculate and display the factorial of a number entered by the user. 

#include <stdio.h>

int main() {
    int i;
    unsigned long long factorial = 1;

    printf("Enter a positive integer: ");
    scanf("%d", &i);

    if (i <0){
        printf("Please enter a positive number. There are no factorials of negative numbers. \n");

    } 
    else{
        for (int n = 1; n <= i; ++n){
            factorial *=n;

        }
        printf("Factorial of %d = %llu\n", i, factorial);
    }

    return 0;

}