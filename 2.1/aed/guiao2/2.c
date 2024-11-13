#include <stdio.h>
#include <string.h>
#include <ctype.h>

int countLetras (char *str);

int main(void)
{   
    char string1[] = "ola,tudo bem";
    char string2[] = "sou, o tiago";




    printf("%d", countLetras(string1));

}


int countLetras (char *str){
    int n = 0;
    for (int i = 0; str[i] != '\0'; i++){

        if(isalpha((unsigned char)str[i])){
            n += 1;
        }

    }
    return n;
}

int countMaiusculas(char *str){
    int n = 0;
    for(int i = 0; str[i] != '/0',i++){
        if (isupper((unsigned char)str[i])){
            n +=1;
        }
    }
    
}