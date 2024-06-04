package aula02;
import java.util.Scanner;

public class App25 {

    public static void main(String[] args) {
        double v1;
        double d1;
        double v2;
        double d2;
        double vm;

        System.out.println("v1:");
        Scanner vp = new Scanner(System.in);
        v1 = vp.nextDouble();

        System.out.println("d1:");
        Scanner dp = new Scanner(System.in);
        d1 = dp.nextDouble();

        System.out.println("v2:");

        Scanner vs = new Scanner(System.in);
        v2 = vs.nextDouble();

        System.out.println("d2:");

        Scanner ds = new Scanner(System.in);
        d2 = ds.nextDouble();

        vm = (v1*v2*(d1+d2))/((v1*v2)+(v1*d2));

        System.out.println(vm);
        
        vp.close();
        dp.close();
        vs.close();
        ds.close();


    }


}
