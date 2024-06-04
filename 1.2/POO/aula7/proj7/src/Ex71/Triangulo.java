package Ex71;

public class Triangulo {
    public double lado1;  
    public double lado2;
    public double lado3;


    //construtor
    public Triangulo(double lado1, double lado2, double lado3){
        if( lado1 < 0 || lado2 < 0 || lado3 < 0){
            System.out.println("Algum lado é menor que 0");
        }else{
            this.lado1 = lado1;
            this.lado2 = lado2;
            this.lado3 = lado3;

        }
    }
    //funções
    public double getlado1(){
        
        
        return this.lado1;
        
    }
    public double getlado2(){
        
        
        return this.lado2;
        
    }
    public double getlado3(){
        
        
        return this.lado3;
        
    }
    public void setlado1(double lado1){
        if (lado1 < 0 ){
            System.out.println("algum lado é menor que 0");
        }else{
        
            this.lado1 = lado1;
        }
    }
    public void setlado2(double lado2){
        if (lado2 < 0 ){
            System.out.println("algum lado é menor que 0");
        }else{
        
            this.lado2 = lado2;
        }
    }
    public void setlado3(double lado3){
        if (lado1 < 0 ){
            System.out.println("algum lado é menor que 0");
        }else{
        
            this.lado3 = lado3;
        }
    }
    

    public String toString(){
        return "O triangulo tem 3 lados:  "+ this.lado1+ " " + this.lado2 + " "+ this.lado3;
    }
    public double calcularPerim(){
        double perimetro;
        perimetro =  this.lado1 + this.lado2 + this.lado3;
        return perimetro;

    }
    public double calcularArea(){
            double area;
            double s = calcularPerim() / 2 ;
            area = Math.sqrt(s * (s-this.lado1)* (s-this.lado2)* (s-this.lado3));
            return area;
        }
    public boolean equals(Object obj){
            if (this == obj) {
                return true;
            }
            return false;
        }
    
}
