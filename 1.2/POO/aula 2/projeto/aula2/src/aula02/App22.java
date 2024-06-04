package aula02;
import java.util.*;

public class App22 {
    public static void main(String[] args) throws Exception {
        double celsius;
        double fahrenheit;

        System.out.println("|Converção de graus Celsius para Fahrenheit|");
        System.out.println("Escreva um valor real de graus Celsius: ");
        Scanner sc = new Scanner(System.in);
        celsius = sc.nextDouble();

        fahrenheit = 1.8*celsius + 32;
        System.out.printf("Fahrenheit: %2f",fahrenheit);
        sc.close();
    }
}
