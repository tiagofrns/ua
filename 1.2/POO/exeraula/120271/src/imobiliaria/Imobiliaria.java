package imobiliaria;
import java.util.*;



public class Imobiliaria {
    List<Imovel> nImoveis;
    int tamanho=0;
    int nImo;

    public Imobiliaria(int nImo){
        this.nImo = nImo;
        List<Imovel> nImoveis = new ArrayList<Imovel>();
    }


    public  boolean temEspaco(List<Imovel> nImoveis){
        
        return tamanho < nImoveis.size();
    }
    public  void addCasa(String morada,double precoBase,double areaTotal, int nQuartos, int nPisos){
        if (temEspaco(nImoveis)){
            Imovel casa = new Casa(morada, precoBase, areaTotal, nQuartos, nPisos);
            nImoveis.add(casa);
            tamanho++;
        }
        
        

    }
    public  void addApartamento(String morada,double precoBase,double areaTotal, int nQuartosAp){
        if (temEspaco(nImoveis)){
            Imovel apartamento = new Apartamento(morada, precoBase, areaTotal, nQuartosAp);
            nImoveis.add(apartamento);
            tamanho++;
        }
    }
    public  void addTerreno(String morada,double precoBase,double areaTotal,String tipo){
            if (temEspaco(nImoveis)){
                Imovel terreno = new Terreno(morada, precoBase, areaTotal, tipo);
                nImoveis.add(terreno);
                tamanho++;
            }

    }
    public String toString(){
        String s = "";
        for (Imovel i: nImoveis){
            s += i.getMorada() + " \n";
        }
        return s;
    }
    public void vender(Imovel o){
        //if (o)         VER O INDEX DO OBJETO E REMOVER COM REMOVE()
        //o.remove(o);
        
    }
}

