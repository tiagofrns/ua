#include <stdio.h>

int counter = 0;


int t1(int n){
    if (!(n == 1)){
        counter++;
        return t1((unsigned)(n/2))+n;
    }else{
        return 1;
    }
}

int t2(int n){
    if (!(n == 1)){
        counter++;
        return t2((unsigned)(n/2)) + t2((unsigned)n/2+n);
    }else{
        return 1;
    }
}

int t3(int n){
    if (!(n == 1)){
        counter++;
        if ((unsigned) n%2 == 0){
            return 2*t3((unsigned)(n/2)+n);
        }else{
            return t3((unsigned)(n/2)) + t3((unsigned)(n/2))  +n;
        }
        
    }else{
        return 1;
    }
}




void main(){
    
    printf("F1\n");
    
    for(int n=1;n<16;n++){
        int t = t1(n);
        printf("%d | %d | %d\n",n,t,counter);
    }

    
    counter = 0;
    printf("F2\n");
    
    
    for(int n=1;n<16;n++){
        int tt = t2(n);
        printf("%d | %d | %d\n",n,tt,counter);
    }
}
