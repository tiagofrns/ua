package aula02;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class App210 {


    
    public static void main(String[] args) {
        double firstLetter;
        double letter;
        ArrayList<Double> list = new ArrayList<>();

        
        
        
        Scanner input = new Scanner(System.in);
        letter = input.nextDouble();
        firstLetter = letter;
        list.add(letter);
        do{
            
            letter = input.nextDouble();
            list.add(letter);
            

        }while(firstLetter != letter);

        input.close();
        int size = list.size();


        //Media
        double totalNumeros = 0;
        double media;
        for (double numero : list){ 
            totalNumeros += numero;
        }
        //System.out.println("------");
        System.out.println(totalNumeros );
        media = totalNumeros / size;
        





        System.out.println("Lista de Numeros:");
        System.out.println(list);
        System.out.println("Valor máximo: " + list.get(list.indexOf (Collections.max(list))));
        System.out.println("Valor minimo: " + list.get(list.indexOf (Collections.min(list))));
        System.out.printf("Média: %.3f\n", media);
        System.out.println("Total de número lidos:" + size);

    }

}
