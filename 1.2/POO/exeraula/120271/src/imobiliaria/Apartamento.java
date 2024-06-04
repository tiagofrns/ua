package imobiliaria;

public class Apartamento extends Imovel{
    int nQuartosAp;

    public Apartamento(String morada,double precoBase,double areaTotal, int nQuartosAp){
        super(morada,precoBase,areaTotal);
        this.nQuartosAp = nQuartosAp;

    }
    public int getnQuartosAp(){
        return this.nQuartosAp;
    }
}
