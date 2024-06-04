package aula2main;

import java.util.Random;
import java.util.Scanner;

public class App33 {
    public static boolean tryAgain(){
        String THinput;
        Scanner sct = new Scanner(System.in);
        System.out.println("Try again?");
        THinput = sct.next();
        //System.out.println(THinput);
        
        if (THinput.equals("S") || THinput.equals("Sim")){
            //System.out.println(THinput);
            sct.close();
            System.out.println("Restarting...");
            return true;
        }else{
            sct.close();
            return false;
        }
    }
    public static void main(String[] args) {
      
        int nInpout;
        boolean estado;
        boolean naoAcertou;
        //System.out.println(args);


        Random r = new Random();
        int randomInt = r.nextInt(100) +1;
     do{
        Scanner sc = new Scanner(System.in);

        nInpout = funcs.funcsgerais.entre1_100(sc);
        naoAcertou = true;

        while (naoAcertou) {
            if (nInpout < randomInt){
                
                System.out.println("O teu número está demasiado baixo");
                nInpout = funcs.funcsgerais.entre1_100(sc);
            }else if (nInpout > randomInt){
                
                System.out.println("O teu número está demasiado alto");
                nInpout = funcs.funcsgerais.entre1_100(sc);
            }else{
                naoAcertou = false;
            }
        }
        
        estado = tryAgain();
        sc.close();
            


     }while(estado == true);
        
       


        
    }
}
