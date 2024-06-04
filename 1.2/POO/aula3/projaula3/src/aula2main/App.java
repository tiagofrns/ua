package aula2main;
import java.util.Scanner;
import funcs.funcsgerais;

public class App {
    

  
    public static void main(String[] args) throws Exception {
        int valor;
        int soma=0;
        System.out.println("Numero inteiro:");
        Scanner sc = new Scanner(System.in);
        // verificar se é positivo
        do{
            valor = sc.nextInt();
        }while(valor < 0);
        sc.close();
        for (int i=1;i<=valor; i++){
            if (funcsgerais.isPrimo(i)){
                soma += i;
            }
        }
        System.out.println(soma);




    }
}
