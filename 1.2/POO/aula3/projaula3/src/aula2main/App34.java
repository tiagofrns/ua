package aula2main;

import java.util.Scanner;

public class App34 {
    public static int NF(double NotaT, double NotaP){
        
        if (NotaT < 7 || NotaP < 7){
                
            return 66;
        }else{
            return (int) Math.round(0.4*NotaT + 0.6*NotaP);
        }
    }
    public static void main(String[] args) throws Exception{
        
        int nTurma;
        
        Scanner turma = new Scanner(System.in);
        System.out.println("Numero de alunos: ");
        nTurma = turma.nextInt();
        


        double[][] notas = new double[nTurma][2];

        Scanner np = new Scanner(System.in);

        Scanner nt = new Scanner(System.in);

        for (int i = 0; i < nTurma; i++){

            do{
            System.out.println("NotaT: ");
            notas[i][0] = nt.nextDouble();
            }while(notas[i][0] < 0 && notas[i][0] > 20);
            do{
            System.out.println("NotaP: ");
            notas[i][1] = np.nextDouble();
            }while(notas[i][1] < 0 && notas[i][1] > 20);
            
        }
        System.out.println("Aluno   NotaT NotaP Pauta");
        for (int n = 0; n < nTurma; n++) {
                double notaT = notas[n][0];
                double notaP = notas[n][1];
                int pauta = NF(notaT, notaP);
                System.out.println((n+1)+ "   " + notaT + "    " + notaP + "   " + pauta);
            }
        
        np.close();
        turma.close();
        nt.close();
        
        
        

        
        
        
        


    }
}
