#include <stdio.h>


int propriedade(int *lista, int size){
    int count = 0;
    
    for (int i = 1; i<size+1; i++){
        if (lista [i] == (lista[i - 1] + lista[i + 1]) ){
            printf("%d\n", i);
            count++;
        }
    }

    return count;
}







void main(void){
    int array[] = {1,2,3,4,5,6,7,8,9,10};
    printf("%d\n", propriedade(array, sizeof(*array) / sizeof(array[0])));


}