#include <iostream>
#include <cmath>

template< typename T>

void print(T any) {
    std::cout << any << std::endl;
}

int nextFactor(long long num) {
    long long next = num++;
    long long limit = ceil(sqrt(next));

    for (int i = 1; i <= ceil(limit); i++) {
        if (next % i == 0) {
            next++;
            limit = ceil(sqrt(next));
            i = 1;
        }
    }

    return next;
}

int main(int argc, char const* argv[])
{
    long long num = 600851475143;
    int largest_prime_factor = 2;

    while (num != 1) {
        if (num % largest_prime_factor == 0)
            num /= largest_prime_factor;
        else
            largest_prime_factor = nextFactor(largest_prime_factor);
    }

    print(largest_prime_factor);
}
