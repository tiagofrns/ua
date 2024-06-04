package aula02;
import java.util.Scanner;

public class App26 {
    public static void main(String[] args) {
        double s;
        double h;
        double m;

        System.out.println("segundos:");
        Scanner sc = new Scanner(System.in);
        s = sc.nextDouble();

        h=(s/3600);
        m=((s%3600)/60);
        s=((s%3600)%60);
        System.out.printf("%.0f : %.0f : %.0f",h,m,s);

    }
}
