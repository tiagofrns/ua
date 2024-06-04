package Ex42;
import java.util.ArrayList;
import java.util.List;


class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int  getQuantity() {
        return quantity;
    }
}


class CashRegister {
    private List<Product> products;

    // TODO: completar implementação da classe
    public CashRegister() {
        products = new ArrayList<>();
    }
    public void addProduct(Product product) {
        products.add(product);
    }
    public double SomaTodos() {
        double total = 0;
        for (Product product : products) {
            total += product.getTotalValue();
        }
        return total;
    }
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Producs  " + "Price  "+ "Quantity    "+ "Total\n");
       
        for (Product product : products) {
            sb.append("Name: " + product.getName());
            sb.append("Price: "+ product.getPrice());
            sb.append("Quantity: "+ product.getQuantity());
            sb.append("Total Value: "+ product.getTotalValue());
                    
        }
        sb.append("\nTotal Value of all products: "+ SomaTodos());
        
        String s = sb.toString();

        return s;
    }
    

}






    

public class CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));
        
        // TODO: Listar o conteúdo e valor total
        System.out.println(cr);

    }
}