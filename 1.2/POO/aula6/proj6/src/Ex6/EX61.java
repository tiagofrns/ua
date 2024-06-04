package Ex6;
import java.sql.Date;

import javax.print.DocFlavor.STRING;

import Ex6.date;



class Pessoa {
    private String nome;
    private int cc;
    private DateYMD dataNasc;


    public Pessoa(String nome, int cc, DateYMD dataNasc) {
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }
    String getNome(){
        return "nome: " + this.nome;
    
    }

    public int getcc(){
        return this.cc;
    }
    public DateYMD getDataNascimento() {
        return dataNasc;
    }
    public String toString(){
        return "nome: " + nome + " cc: " + getcc() + " datanasc: "+ dataNasc;
    }
    }

class Aluno extends Pessoa {
    private int nMec;
    private static int proximonMec = 1000;
    
    private DateYMD dataInsc;

    public Aluno(String nome, int cc, DateYMD dataNasc, DateYMD dataInsc){
        super(nome, cc, dataNasc);
        this.nMec = proximonMec++;
        this.dataInsc = dataInsc;

    }
    public Aluno(String nome, int cc, DateYMD dataNasc) {
        this(nome, cc, dataNasc, new DateYMD());
    }
    public int getNMec() {
        return this.nMec;
    }


    public DateYMD getDataInscricao() {
        return dataInsc;
    }
}




class Professor extends Pessoa{
    private String tipo;
    private String dep;


    public Professor(String nome, int cc, DateYMD dataNasc, String tipo, String dep){
        super(nome, cc, dataNasc);
        if (tipo == "Auxiliar" || tipo == "Associado" || tipo == "Catedrático"){
        this.tipo = tipo;
        this.dep = dep;
        }
    }
    @Override public String toString() {
        return "tipo: " + tipo + " dep: " + dep;
    }

}
class Bolseiro extends Aluno{
    private Professor ProfOri;
    private int bolsa;

    public Bolseiro (String nome, int cc, DateYMD dataNasc, DateYMD dataInsc, Professor ProfOri, int bolsa){
        super(nome, cc, dataNasc, dataInsc);
        this.ProfOri = ProfOri;
        this.bolsa = bolsa;
    }
    public Bolseiro (String nome, int cc, DateYMD dataInsc, Professor ProfOri, int bolsa){
        super(nome, cc, dataInsc);
        this.ProfOri = ProfOri;
        this.bolsa = bolsa;
    }
    public int getBolsa(){
        return this.bolsa;
    }
    public Professor getProfOri(){
       return this.ProfOri;
    }
    public void  setBolsa(int bol){
        this.bolsa = bol;
    }
    @Override public String toString(){
        return "bolsa: " + bolsa + " Prof: " + ProfOri;
    }
}


















public class EX61 {
        public static void main(String[] args) {
        Aluno al = new Aluno ("Andreia Melo", 9855678,
            new DateYMD(18, 7, 1990), new DateYMD(1, 9, 2018));
        Professor p1 = new Professor("Jorge Almeida", 3467225, new DateYMD(13, 3, 1967),
        "Associado", "Informática");
        Bolseiro bls = new Bolseiro ("Igor Santos", 8976543, new DateYMD(11, 5, 1985), p1,
        900);
        bls.setBolsa(1050);
        System.out.println("Aluno: " + al.getNome());
        System.out.println(al);
        System.out.println("Bolseiro: " + bls.getNome() + ", NMec: "
        + bls.getNMec() + ", Bolsa: " + bls.getBolsa() + ", Orientador: " +
        bls.getProfOri());

        System.out.println(bls);
        }
        }
