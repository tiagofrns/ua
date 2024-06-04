package aula02;
import java.util.Scanner;

public class App27 {


    public static void main(String[] args) {
        double xp1;
        double yp1;
        double xp2;
        double yp2;
        double d;

        System.out.println("Ponto 1 (p1)");

        System.out.println("x:");
        Scanner scx1 = new Scanner(System.in);
        xp1 = scx1.nextDouble();

        System.out.println("y:");
        Scanner scy1 = new Scanner(System.in);
        yp1 = scy1.nextDouble();


        System.out.println("Ponto 2 (p2)");

        System.out.println("x:");
        Scanner scx2 = new Scanner(System.in);
        xp2 = scx2.nextDouble();

        System.out.println("y:");
        Scanner scy2 = new Scanner(System.in);
        yp2 = scy2.nextDouble();



        d = Math.sqrt(Math.pow((xp2-xp1),2) + Math.pow((yp2-yp1),2));


        System.out.println(d);



        scx1.close();
        scx2.close();
        scy1.close();
        scy2.close();




    }
}
