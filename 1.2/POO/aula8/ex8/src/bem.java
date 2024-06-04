import java.util.List;

class Ementa {
    private String nome;
    private String local;
    private  List<Prato> pratos;
    
    public Ementa(String nome, String local) {
        this.nome = nome;
        this.local = local;
        
    } 
    
}

//////////////// START ALIMENTOS ////////////////
abstract class Alimento {
    String nome;
    double proteina;
    double caloriaa;
    double peso;

    public Alimento(String nome, double proteina, double caloriaa, double peso) {
        this.nome = nome;
        this.proteina = proteina;
        this.caloriaa = caloriaa;
        this.peso = peso;
    }
    
    //FALTA CLASSES ABSTRATAS
    
    
}


class Carne extends Alimento{
    public Carne (String nome, double proteina, double caloriaa, double peso){
        super(nome, proteina, caloriaa, peso);
    }
    
}


class Cereal extends Alimento{
    public Cereal (String nome, double proteina, double caloriaa, double peso){
        super(nome, proteina, caloriaa, peso);
    }

}

class Legume extends Alimento{

    public Legume (String nome, double proteina, double caloriaa, double peso){
        super(nome, proteina, caloriaa, peso);
    }

    
}
//////////////// END ALIMENTOS ////////////////


//////////////// START PRATOS ////////////////

abstract class Prato {
    private String name;
    private List<Alimento> composicao;
    
    public Prato(String name, List<Alimento> composicao) {
        
        this.name = name;
        this.composicao = composicao;
    }
    
    
}


class PratoVegetariano extends Prato{
    public PratoVegetariano(String name, List<Alimento> composicao) {
        super(name, composicao);
        for (Alimento i : composicao){
            System.out.println(i.getClass());
        }
        
    }

}
class PratoDieta extends Prato{
    public PratoDieta(String name, List<Alimento> composicao) {
        
        super(name, composicao);
    }
    
}
//////////////// END PRATOS ////////////////





public class bem {
    public static void main(String[] args) {
        List<Alimento> o = new List;
    
            
        
        Prato p = new PratoVegetariano("pila", )
        
    }
}
