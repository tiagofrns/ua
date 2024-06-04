package aula02;
import java.util.Scanner;

public class App24 {

    public static void main(String[] args) {
        double montanteInvestido;
        double taxaJuro;
        double montanteTotal=0;

        System.out.println("montanteInvestido:");
        Scanner mn = new Scanner(System.in);
        montanteInvestido = mn.nextDouble();

        System.out.println("taxaJuro:");
        Scanner tj = new Scanner(System.in);
        taxaJuro = tj.nextDouble();
        taxaJuro /= 100;


        for (int i= 1; i<4; i++){
            if(montanteTotal == 0){
                montanteTotal = (montanteInvestido * taxaJuro) + montanteInvestido;
            }
            else{
                montanteTotal = (montanteTotal * taxaJuro) + montanteTotal;
                
            }
            //System.out.println(montanteTotal);

        }
        System.out.printf("Para um investimento de %.3f euros e uma taxa de %.2f o montante ao fim de 3 meses é de %.3f", montanteInvestido,taxaJuro*100,montanteTotal);
        
        mn.close();
        tj.close();
    }
}
