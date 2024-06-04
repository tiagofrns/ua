package funcs;

import java.util.Scanner;

public class funcsgerais {
    public static boolean isPrimo(int valor){
        int nDivisores=0;
        if (valor == 1){
            return false;
        }
        for (int i = 1; i<valor; i++){
            double resto = valor%i;
            if (resto == 0){
                nDivisores += 1;
                
            }
        }
        if (nDivisores == 1){
            return true;
        }else{
            return false;
        }
        
    }
    public static double entre0_5(Scanner sc){
        double juro;
        
        do{
            System.out.println("Juro Mensal:");
            juro = sc.nextDouble();
        } while(juro > 0 && juro < 5);
        

        return juro;
    }
    public static int positivo_multiplo1000(Scanner mi) {
        int montante;
        do{
            System.out.println("Montante investido:");
            montante = mi.nextInt();
        }while( montante > 0 &&montante % 1000 != 0);
        return montante;
        
    }
    public static int entre1_100(Scanner sc){
        int n;
        
        do{
            System.out.println("Numero(entre 1 e 100):");
            n = sc.nextInt();
        } while(n < 1 || n> 100);
        return n;
    }
}
