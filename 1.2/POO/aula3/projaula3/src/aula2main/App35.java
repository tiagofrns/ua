package aula2main;

import java.util.Scanner;

public class App35 {
    public static void main(String[] args) {
        String date;
        int diaSemana;
        Scanner dt = new Scanner(System.in);
        System.out.println("Date: ");
        date = dt.next();
        String[] parts = date.split("/");
        String month = parts[0]; 
        String year = parts[1]; 





        Scanner ds = new Scanner(System.in);
        System.out.println("dia da semana que começa: ");
        diaSemana = ds.nextInt();
        System.out.println("   "+month + " "+ year);

        String[] diasSemana = {"Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"};
        
        
        
        
        
        for (String dia : diasSemana) {
            System.out.print(dia + " ");
        }
        System.out.println();
        
       
        for (int i = 1; i < diaSemana; i++) {
            System.out.print("   ");
        }
        
        int dia = 1;
        
        // Imprimir os dias do mês
        for (int i = diaSemana; i <= 7; i++) {
            System.out.printf("%2d ", dia);
            dia++;
        }
        System.out.println();
        
        while (dia <= 30) {
            for (int i = 1; i <= 7 && dia <= 30; i++) {
                System.out.printf("%2d ", dia);
                dia++;
            }
            System.out.println();
        }
    }
    




    }

