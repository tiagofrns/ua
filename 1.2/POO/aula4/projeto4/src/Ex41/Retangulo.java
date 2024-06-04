package Ex41;

public class Retangulo {
    public double comprimento;
    public double altura;
    public Retangulo(double comprimento, double altura){
        if ( comprimento > 0 || altura > 0){
            this.comprimento = comprimento;
            this.altura = altura;
        }else{
            System.out.println("algum numero menor que 0");
        }
    }



    //funções
    public double getcomprimeno(){
        
        
        return this.comprimento;
        
    }
    public double getaltura(){
        
        
        return this.altura;
        
    }

    public void setcomp(double comprimento){
        if (comprimento < 0 ){
            System.out.println(" menor que 0");
        }else{
        
            this.comprimento = comprimento;
        }
    }
    public void setaltura(double altura){
        if (altura < 0 ){
            System.out.println(" menor que 0");
        }else{
        
            this.altura = altura;
        }
    }
    
    

    public String toString(){
        return "O retanguro tem de comprimento:  "+ this.comprimento+ " e de altura" + this.altura ;
    }


    public Double getPerimetro(){
        double perimetro;
        perimetro =  (this.comprimento*2) + (this.altura*2);
        return perimetro;

    }
    public Double getArea(){
            double area;
            
            area = this.comprimento * this.altura;
            return area;
        }
    public boolean equals(Object obj){
        if (this == obj) {
            return true;
        }
        return false;
    }


}
