package Ex71;

abstract class Forma {
    public String cor;
    

    public Forma(String cor){
        this.cor = cor;
        
    }
    abstract public double calcularArea();
    abstract public double calcularPerim();


}















public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
    }
}
