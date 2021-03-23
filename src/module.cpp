#include <iostream>
#include "../hdr/module.h"

int task(int m, int n) {
    int m_counter = 0;
    int n_counter = 0;

    for (int i = 0; i < sizeof(int) * 8; i++) {
        if ((m & 1) == 0) {
            m_counter++;
        }
        m >>= 1;
    }

    for (int i = 0; i < sizeof(int) * 8; i++) {
        if ((n & 1) == 0) {
            n_counter++;
        }
        n >>= 1;
    }

    return std::max(m_counter, n_counter);
}