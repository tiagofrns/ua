package aula02;
import java.util.*;


public class App {
    public static void main(String[] args) throws Exception {
        
        double km=0;
        double milhas=0;

        System.out.println("");
        Scanner sc = new Scanner(System.in);

        km = sc.nextDouble();

        milhas = km/1.609;
        System.out.println(milhas);
        sc.close();
    }
}
