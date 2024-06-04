package aula02;
import java.util.Scanner;

public class App28 {

    public static void main(String[] args) {
        double a;
        double b;
        double c;


        System.out.println("cateto A:");
        Scanner ca = new Scanner(System.in);
        a = ca.nextDouble();

        System.out.println("cateto B:");
        Scanner cb = new Scanner(System.in);
        b = cb.nextDouble();

        c = Math.sqrt(Math.pow(a, 2)+Math.pow(b, 2));
        System.out.println("Hipotenusa:");
        System.out.println(c);
        ca.close();
        cb.close();


    }
}
