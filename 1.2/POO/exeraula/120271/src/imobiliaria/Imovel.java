package imobiliaria;
abstract class Imovel {
    String morada;
    double precoBase;
    double areaTotal;
    int id;
    static int incre = 100;

    public Imovel(String morada,double precoBase,double areaTotal){
        this.morada = morada;
        this.precoBase = precoBase;
        this.areaTotal = areaTotal;
        this.id += incre;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((morada == null) ? 0 : morada.hashCode());
        long temp;
        temp = Double.doubleToLongBits(precoBase);
        result = prime * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(areaTotal);
        result = prime * result + (int) (temp ^ (temp >>> 32));
        result = prime * result + id;
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Imovel other = (Imovel) obj;
        if (morada == null) {
            if (other.morada != null)
                return false;
        } else if (!morada.equals(other.morada))
            return false;
        if (Double.doubleToLongBits(precoBase) != Double.doubleToLongBits(other.precoBase))
            return false;
        if (Double.doubleToLongBits(areaTotal) != Double.doubleToLongBits(other.areaTotal))
            return false;
        if (id != other.id)
            return false;
        return true;
    }

    public String getMorada(){
        return morada;  
    }
    public double getPrecoBase(){
        return precoBase;
    }
    public double getareaTotal(){
        return areaTotal;
    }
    public void setMorada(String morada){
        this.morada = morada;  
    }
    public void setPrecoBase(double precoBase){
        this.precoBase = precoBase;
    }
    public void setareaTotal(double areaTotal){
        this.areaTotal = areaTotal;
    }
}
