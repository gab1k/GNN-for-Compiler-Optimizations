#include <iostream>

#include "foo.hpp"
#include "useless.hpp"

int main(){
    int a = foo();
    for(int i = 0; i < a; i ++){
        std::cout << i << std::endl;
    }
}