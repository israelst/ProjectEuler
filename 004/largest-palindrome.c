#include <stdio.h>

int is_palindrome(int number){
    char snumber[6];
    sprintf(snumber, "%d", number);
    for(int i = 0; i <= 2; i++){
        if(snumber[i] != snumber[5 - i]){
            return 0;
        }
    }
    return 1;
}

int main(int argc, char *argv[]){
    int result = 0, largest = 0, largest_b = 100;

    for(int a = 999; a >= largest_b; a--){
        for(int b = a; b >= largest_b; b--){
            result = a * b;
            if(is_palindrome(result)){
                if(largest < result){
                    largest = result;
                }
                largest_b = b;
                printf("%d x %d = %d\n", a, b, result);
                break;
            }
        }
    }
    printf("The largest palindrome is %d\n", largest);
    return 0;
}

