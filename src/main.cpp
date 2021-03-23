#include <iostream>
#include <cstring>
#include "../hdr/module.h"

int main(int argc, char** argv) {
    if (argv[1] != nullptr && argv[2] != nullptr && std::atoi(argv[1]) != 0 && std::atoi(argv[2]) != 0) {
        int m = std::atoi(argv[1]);
        int n = std::atoi(argv[2]);
        std::cout << m << " " << n << std::endl;
        int result = task(m, n);
        std::cout << "Max count of 0's: " << result << std::endl;
    }
    else {
        std::cout << "Invalid data" << std::endl;
    }
}