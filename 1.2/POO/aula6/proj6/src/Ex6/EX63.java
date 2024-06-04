package Ex6;

import java.util.Arrays;



class Conjunto {
    private int[] elementos;
    private int tamanho;

    public Conjunto() {
        elementos = new int[10]; 
        tamanho = 0;
    }

    public void insert(int n) {
        if (!contains(n)) { 
            if (tamanho == elementos.length) { 
                elementos = Arrays.copyOf(elementos, elementos.length * 2);
            }
            elementos[tamanho++] = n; 
        }
    }

    public boolean contains(int n) {
        for (int i = 0; i < tamanho; i++) {
            if (elementos[i] == n) {
                return true;
            }
        }
        return false;
    }

    public void remove(int n) {
        for (int i = 0; i < tamanho; i++) {
            if (elementos[i] == n) {
                for (int j = i; j < tamanho - 1; j++) {
                    elementos[j] = elementos[j + 1]; 
                }
                tamanho--; 
                break;
            }
        }
    }

    public void empty() {
        tamanho = 0; 
    }

    public int size() {
        return tamanho; 
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        for (int i = 0; i < tamanho; i++) {
            sb.append(elementos[i]);
            if (i < tamanho - 1) {
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public Conjunto combine(Conjunto add) {
        Conjunto resultado = new Conjunto();

        for (int i = 0; i < this.tamanho; i++) {
            resultado.insert(this.elementos[i]); 
        }

        for (int i = 0; i < add.tamanho; i++) {
            resultado.insert(add.elementos[i]);
        }

        return resultado;
    }

    public Conjunto subtract(Conjunto dif) {
        Conjunto resultado = new Conjunto();

        for (int i = 0; i < this.tamanho; i++) {
            if (!dif.contains(this.elementos[i])) {
                resultado.insert(this.elementos[i]); 
            }
        }

        return resultado;
    }

    public Conjunto intersect(Conjunto inter) {
        Conjunto resultado = new Conjunto();

        for (int i = 0; i < this.tamanho; i++) {
            if (inter.contains(this.elementos[i])) {
                resultado.insert(this.elementos[i]); 
            }
        }

        return resultado;
    }
    public class EX63 {

    
    public static void main(String[] args) {
        Conjunto c1 = new Conjunto();
c1.insert(4); c1.insert(7); c1.insert(6); c1.insert(5);
Conjunto c2 = new Conjunto();
int[] test = { 7, 3, 2, 5, 4, 6, 7};
for (int el : test) c2.insert(el);
c2.remove(3); c2.remove(5); c2.remove(6);
System.out.println(c1);
System.out.println(c2);
System.out.println("Número de elementos em c1: " + c1.size());
System.out.println("Número de elementos em c2: " + c2.size());
System.out.println("c1 contém 6?: " + ((c1.contains(6) ? "sim" : "não")));
System.out.println("c2 contém 6?: " + ((c2.contains(6) ? "sim" : "não")));
System.out.println("União:" + c1.combine(c2));
System.out.println("Interseção:" + c1.intersect(c2));
System.out.println("Diferença:" + c1.subtract(c2));
c1.empty();
System.out.println("c1:" + c1);
}
    }
}

