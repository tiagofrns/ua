package aula02;
import java.util.Scanner;

public class App29 {




    public static void main(String[] args) {
        int n;


        System.out.print("N: ");
        Scanner sc = new Scanner(System.in);
        n = sc.nextInt();
        

        for (int i = n;i >= 0; i-- ){
            
            if (i%10 == 0){
                System.out.println(i);
            }else{
                System.out.print(i);
                System.out.print(",");
            }
            
        }
        sc.close();
    }

}
