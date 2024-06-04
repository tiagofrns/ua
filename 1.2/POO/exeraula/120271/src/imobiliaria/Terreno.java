package imobiliaria;

public class Terreno extends Imovel{


    String tipo;

    public Terreno(String morada,double precoBase,double areaTotal,String tipo){
            super(morada,precoBase,areaTotal);
            this.tipo = tipo;
    }

    public String getTipo(){
        return this.tipo;
    }
    public void setTipo(String tipo){
         this.tipo = tipo;
    }

}
