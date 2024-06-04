// import java.util.ArrayList;

// public interface KmPercorridosInterface {
//     void trajeto(int quilometros);
//     int ultimoTrajeto();
//     int distanciaTotal();
//     }
    
// public interface VeiculoEletrico {
//         int autonomia(); 
//         void carregar(int percentagem); 
// }

// /**
//  * EmpresaAluguer
//  */
// class EmpresaAluguer {
//     String name;
//     int codPostal;
//     String email;
//     ArrayList<EmpresaAluguer> cars;
    
//     public EmpresaAluguer(String name, int codPostal, String email) {
//         this.name = name;
//         this.codPostal = codPostal;
//         this.email = email;
//         cars = new ArrayList<EmpresaAluguer>();
//     }

//     public EmpresaAluguer(String matricula, String marca, String modelo, int potencia) {
//         //TODO Auto-generated constructor stub
//     }
    
    
// }
// /////////////////////////////////////////////////////////////
// class Motociclo extends EmpresaAluguer implements KmPercorridosInterface {
//     int matricula;
//     String marca;
//     String modelo;
//     int cv;
//     String tipo;
//     ArrayList<Integer> allkms;
//     int kms=0;
//     public Motociclo(String name, int codPostal, String email,int matricula, String marca, String modelo, int cv, String tipo) {
//         super(name,codPostal,email);
//         this.matricula = matricula;
//         this.marca = marca;
//         this.modelo = modelo;
//         this.cv = cv;
//         this.tipo = tipo;
//         allkms = new ArrayList<Integer>();
//     }
//     public void trajeto(int quilometros){
//         this.kms += quilometros;
//         allkms.add(quilometros);
//     }
//     public int ultimoTrajeto(){
//         return allkms.getLast();
//     }
//     public int distanciaTotal(){
//         return this.kms;
//     }
    

// }
// ////////////////////////////////////////////////////////
// class AutoLigeiro extends EmpresaAluguer implements KmPercorridosInterface{
//     int matricula;
//     String marca;
//     String modelo;
//     int cv;
//     int nQuadro;
//     double capacidadeBaga;
//     ArrayList<Integer> allkms;
//     int kms=0;


//     public AutoLigeiro(String name, int codPostal, String email, int matricula, String marca, String modelo, int cv,
//             int nQuadro, double capacidadeBaga) {
//         super(name, codPostal, email);
//         this.matricula = matricula;
//         this.marca = marca;
//         this.modelo = modelo;
//         this.cv = cv;
//         this.nQuadro = nQuadro;
//         this.capacidadeBaga = capacidadeBaga;
//     }
//     public void trajeto(int quilometros){
//         this.kms += quilometros;
//         allkms.add(quilometros);
//     }
//     public int ultimoTrajeto(){
//         return allkms.getLast();
//     }
//     public int distanciaTotal(){
//         return this.kms;
//     }
//     @Override
//     public int hashCode() {
//         final int prime = 31;
//         int result = 1;
//         result = prime * result + matricula;
//         result = prime * result + ((marca == null) ? 0 : marca.hashCode());
//         result = prime * result + ((modelo == null) ? 0 : modelo.hashCode());
//         result = prime * result + cv;
//         result = prime * result + nQuadro;
//         long temp;
//         temp = Double.doubleToLongBits(capacidadeBaga);
//         result = prime * result + (int) (temp ^ (temp >>> 32));
//         result = prime * result + ((allkms == null) ? 0 : allkms.hashCode());
//         result = prime * result + kms;
//         return result;
//     }
//     public int getMatricula() {
//         return matricula;
//     }
//     public String getMarca() {
//         return marca;
//     }
//     public String getModelo() {
//         return modelo;
//     }
//     public int getCv() {
//         return cv;
//     }
//     public int getnQuadro() {
//         return nQuadro;
//     }
//     public double getCapacidadeBaga() {
//         return capacidadeBaga;
//     }
//     public int getKms() {
//         return kms;
//     }
    
// }
// /////////////////////////////////////////////////////////
// class taxi extends AutoLigeiro{
//     int nLicenca;
    
//     public taxi(String name, int codPostal, String email, int matricula, String marca, String modelo, int cv,
//             int nQuadro, double capacidadeBaga, int nLicenca) {
//         super(name, codPostal, email, matricula, marca, modelo, cv, nQuadro, capacidadeBaga);
//         this.nLicenca = nLicenca;
//     }

//     public int getnLicenca() {
//         return nLicenca;
//     }

//     public void setnLicenca(int nLicenca) {
//         this.nLicenca = nLicenca;
//     }
    
    
// }

// class PesadoMercadorias extends EmpresaAluguer implements KmPercorridosInterface{
//     private String numeroQuadro;
//     private double peso; 
//     private double cargaMaxima;
//     ArrayList<Integer> allkms;
//     int kms=0;
//     public PesadoMercadorias(String matricula, String marca, String modelo, int potencia, String numeroQuadro, double peso, double cargaMaxima) {
//         super(matricula, marca, modelo, potencia);
//         this.numeroQuadro = numeroQuadro;
//         this.peso = peso;
//         this.cargaMaxima = cargaMaxima;
//     }
//     public void trajeto(int quilometros){
//         this.kms += quilometros;
//         allkms.add(quilometros);
//     }
//     public int ultimoTrajeto(){
//         return allkms.getLast();
//     }
//     public int distanciaTotal(){
//         return this.kms;
//     }
// }
// class PesadoPassageiros extends EmpresaAluguer implements KmPercorridosInterface{
//     private String numeroQuadro;
//     private double peso; 
//     ArrayList<Integer> allkms;
//     int kms=0;
//     private int numeroMaxPassageiros;

//     // Construtor
//     public PesadoPassageiros(String matricula, String marca, String modelo, int potencia, String numeroQuadro, double peso, int numeroMaxPassageiros) {
//         super(matricula, marca, modelo, potencia);
//         this.numeroQuadro = numeroQuadro;
//         this.peso = peso;
//         this.numeroMaxPassageiros = numeroMaxPassageiros;
//     }
//     public void trajeto(int quilometros){
//         this.kms += quilometros;
//         allkms.add(quilometros);
//     }
//     public int ultimoTrajeto(){
//         return allkms.getLast();
//     }
//     public int distanciaTotal(){
//         return this.kms;
//     }
// }