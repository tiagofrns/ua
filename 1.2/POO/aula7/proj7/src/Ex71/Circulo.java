package Ex71;
public class Circulo extends Forma {
    public Double raio;  


    //construtor
    public Circulo(double raio, String cor){
        super(cor);
        if (raio > 0){
            this.raio = raio;
        }else{
            System.out.println("Numero inferior a 0");
        }
    }
    //funções
    public Double getRaio(){
        return this.raio;
    }
    
    public void setRaio(Double setraio){
        if (setraio > 0){
            this.raio = setraio;
        }else{
            System.out.println("Numero inferior a 0");
        }
    }
    public String toString(){
        return "O raio é "+ this.raio;
    }
    public double calcularArea(){
        double area;
        area = (Math.PI)* (Math.pow(this.raio, 2));
        return area;
    }
    public double calcularPerim(){
        double perimetro;
        perimetro =  2 * Math.PI * this.raio;
        return perimetro;
    }
    public boolean equals(Object obj){
        if (this == obj) {
            return true;
        }
        return false;
    }


}
