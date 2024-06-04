package imobiliaria;

public class Casa extends Imovel{

        int nQuartos;
        int nPisos;

        public Casa(String morada,double precoBase,double areaTotal, int nQuartos, int nPisos){
            super(morada, precoBase, areaTotal);
            this.nQuartos = nQuartos;
            this.nPisos = nPisos;
        }
/* 
        public String getMorada(){
            return super.morada;  ///////////////////////////
        }
        public double getPrecoBase(){
            return precoBase;
        }
        public double getareaTotal(){
            return areaTotal;
        }

*/

        public int getnQuartos(){
            return this.nQuartos;
        }
        public int getnPisos(){
            return this.nPisos;
        }
        public void setnQuartos(int nQuartos){
            this.nQuartos = nQuartos;
        }
        public void setnPisos(int nPisos){
            this.nPisos= nPisos;
        }


}
