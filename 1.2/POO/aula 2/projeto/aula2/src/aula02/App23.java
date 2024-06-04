package aula02;
import java.util.Scanner;

public class App23 {

    public static void main(String[] args) throws Exception {

        double energiaNecessaria;
        double finalTemperaturee;
        double initialTemperature;
        double quantidadeAgua;

        System.out.println("Quantidade de Agua:");
        Scanner sc = new Scanner(System.in);
        quantidadeAgua = sc.nextDouble();

        System.out.println("initialTemperature:");
        Scanner scit = new Scanner(System.in);
        initialTemperature = scit.nextDouble();
        
        System.out.println("finalTemperature:");
        Scanner scft = new Scanner(System.in);
        finalTemperaturee = scft.nextDouble();

        energiaNecessaria = quantidadeAgua * ( finalTemperaturee - initialTemperature) * 4184;

        System.out.printf("ENERGIA NECESSARIA: %3f", energiaNecessaria);
        sc.close();
        scit.close();
        scft.close();

    }    

}
