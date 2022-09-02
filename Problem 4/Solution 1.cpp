#include <iostream>
#include <string>
// #include <chrono>


bool is_palindrome(int);
int largest_palindrome();

int main(int argc, char const* argv[])
{
    int largest = 0;
    // auto start = std::chrono::high_resolution_clock::now();
    largest = largest_palindrome();
    // auto stop = std::chrono::high_resolution_clock::now();

    // auto duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);

    std::cout << largest << std::endl;

    // std::cout << "Execution Time: " << duration.count() << " MicroSeconds" << std::endl;

    system("pause");
}

int largest_palindrome() {
    int
        largest_palindrome = 0,
        limit,
        mul = 0;
    // num_len = 3,
    // start = pow(10, num_len),
    // end = 0;
    std::string
        num = "";

    for (int i = 100, j = 100; i <= 999;) {

        mul = i * j;
        if (mul % 11 == 0)
            if (is_palindrome(mul) && mul > largest_palindrome) {
                // std::cout << i << " * " << j << std::endl;
                largest_palindrome = mul;
            }
        if (++j > 999) {
            j = 100;
            i++;
        }

    }

    return largest_palindrome;
}

/**
 * @param num
 * @return true if num is a palindrome, else returns false
 */
bool is_palindrome(int num) {
    std::string num_str = std::to_string(num);

    int
        num_length = num_str.length(),
        limit = num_length / 2;

    for (int i = 0; i < limit; i++)
        if (num_str[i] != num_str[num_length - 1 - i])
            return 0;

    return 1;
}