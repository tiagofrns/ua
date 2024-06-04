package aula2main;

import java.util.Scanner;

import funcs.funcsgerais;

public class App32 {

    public static void main(String[] args) {
        double ValorVariavel= 0;
        
        Scanner mi = new Scanner(System.in);
        //validar montante
        int montanteInvestido = funcsgerais.positivo_multiplo1000(mi);


        Scanner sc = new Scanner(System.in);
        //validar juro
        double juroMensal = funcsgerais.entre0_5(sc);

        for (int i = 0; i< 12; i++){
            if (i == 0){
                ValorVariavel = (montanteInvestido * juroMensal) + montanteInvestido;
            }else{
                ValorVariavel = ValorVariavel + (ValorVariavel * juroMensal);
            }
            System.out.println("Mês:" + i+1 + "\n Valor mensal do fundo: " + ValorVariavel);
        }


        //fechar scanners
        mi.close();
        sc.close();



    }
    

}
