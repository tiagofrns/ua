// import java.util.List;

// public interface Alimento {
//     String getNome();
//     double getProteinas();
//     double getCalorias();
//     double getPeso();
// }

// // Classe abstrata para alimentos básicos
//  abstract class AlimentoBasico implements Alimento {
//     protected String nome;
//     protected double proteinasPor100g;
//     protected double caloriasPor100g;
//     protected double peso; // em gramas

//     // Construtor
//     public AlimentoBasico(String nome, double proteinasPor100g, double caloriasPor100g, double peso) {
//         this.nom82feitobeme = nome;
//         this.proteinasPor100g = proteinasPor100g;
//         this.caloriasPor100g = caloriasPor100g;
//         this.peso = peso;
//     }

//     // Implementação dos métodos da interface Alimento
//     @Override
//     public String getNome() {
//         return nome;
//     }

//     @Override
//     public double getProteinas() {
//         return proteinasPor100g * peso / 100;
//     }

//     @Override
//     public double getCalorias() {
//         return caloriasPor100g * peso / 100;
//     }

//     @Override
//     public double getPeso() {
//         return peso;
//     }

//     // Métodos hashCode(), equals() e toString()
//     // ...
// }

// // Classe para carne
//  class Carne extends AlimentoBasico {
//     private String variedade;

//     // Construtor
//     public Carne(String nome, String variedade, double proteinasPor100g, double caloriasPor100g, double peso) {
//         super(nome, proteinasPor100g, caloriasPor100g, peso);
//         this.variedade = variedade;
//     }

//     // Getters específicos de Carne
//     // ...
// }

// // Classe para peixe
//  class Peixe extends AlimentoBasico {
//     private String tipo;

//     // Construtor
//     public Peixe(String nome, String tipo, double proteinasPor100g, double caloriasPor100g, double peso) {
//         super(nome, proteinasPor100g, caloriasPor100g, peso);
//         this.tipo = tipo;
//     }

//     // Getters específicos de Peixe
//     // ...
// }

// // Classe para cereal
//  class Cereal extends AlimentoBasico {
//     // Construtor
//     public Cereal(String nome, double proteinasPor100g, double caloriasPor100g, double peso) {
//         super(nome, proteinasPor100g, caloriasPor100g, peso);
//     }

//     // Getters específicos de Cereal
//     // ...
// }

// // Classe para legume
//  class Legume extends AlimentoBasico {
//     // Construtor
//     public Legume(String nome, double proteinasPor100g, double caloriasPor100g, double peso) {
//         super(nome, proteinasPor100g, caloriasPor100g, peso);
//     }

//     // Getters específicos de Legume
//     // ...
// }

// // Classe para prato
//  class Prato implements Comparable<Prato> {
//     private String nome;
//     private List<Alimento> composicao;

//     // Construtor
//     public Prato(String nome, List<Alimento> composicao) {
//         this.nome = nome;
//         this.composicao = composicao;
//     }
//     public double calcularCalorias() {
//         double totalCalorias = 0;
//         for (Alimento alimento : composicao) {
//             totalCalorias += alimento.getCalorias();
//         }
//         return totalCalorias;
//     }

//     // Métodos para obter informações sobre o prato
//     // ...

//     // Implementação do método compareTo da interface Comparable
//     @Override
//     public int compareTo(Prato outro) {
//         // Comparação baseada no total de calorias do prato
//         double caloriasEste = calcularCalorias();
//         double caloriasOutro = outro.calcularCalorias();
//         return Double.compare(caloriasEste, caloriasOutro);
//     }

//     // Outros métodos relacionados com o prato
//     // ...
// }

// // Classe para prato vegetariano
//  class PratoVegetariano extends Prato {
//     // Construtor
//     public PratoVegetariano(String nome, List<Alimento> composicao) {
//         super(nome, composicao);
//     }

//     // Outros métodos específicos de PratoVegetariano
//     // ...
// }

// // Classe para prato de dieta
//  class PratoDieta extends Prato {
//     private double limiteMaxCalorias;

//     // Construtor
//     public PratoDieta(String nome, List<Alimento> composicao, double limiteMaxCalorias) {
//         super(nome, composicao);
//         this.limiteMaxCalorias = limiteMaxCalorias;
//     }

//     // Outros métodos específicos de PratoDieta
//     // ...
// }

// // Classe para ementa
// class Ementa {
//     private String nome;
//     private String local;
//     private List<Prato> pratos;

//     // Construtor
//     public Ementa(String nome, String local, List<Prato> pratos) {
//         this.nome = nome;
//         this.local = local;
//         this.pratos = pratos;
//     }

//     // Outros métodos relacionados com a ementa
//     // ...
// }