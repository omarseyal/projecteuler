//
//  main.c
//  project_euler_container
//
//  Created by Omar Seyal on 4/15/14.
//  Copyright (c) 2014 Omar Seyal. All rights reserved.
//

#include <stdio.h>

int primes_found;
int last_prime_found;
int current_number;

void findNextPrime(int number) {
    int factors_found = 0;
    
    for(int i=1; i<=number; i++) {
        if(number%i == 0) {
            factors_found++;
        }
    }
    
    if(factors_found == 2) {
        primes_found++;
        last_prime_found = number;
        printf("found prime: %i\n", number);
    } else {
        findNextPrime(number + 1);
    }
}

void doProblem7() {
    primes_found = 2;
    last_prime_found = 3;
    
    while(primes_found != 10001) {
        current_number = last_prime_found+1;
        findNextPrime(current_number);
    }
    
    printf("%i is the 1001st prime\n.", last_prime_found);
}


int main(int argc, const char * argv[])
{
    doProblem7();
    
    return 0;
}


