import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class Book{
    String title;
    String author;
    int year;


    public Book(String title, String author, int year) {
        this.title = title;
        this.author = author;
        this.year = year;
    }


    @Override
    public String toString() {
        return "Book [title=" + title + ", author=" + author + ", year=" + year + "]";
    }

    

    
}

public class OrganizerBooks {
   
    
    Map<String,ArrayList<Book>> géneros;
    
    
    
    public OrganizerBooks() {

        géneros = new HashMap<>();

    }

    public void addLivroToGender(Book livro, String genero){
        ArrayList<Book> listaLivros = new ArrayList<>();
        
        if  (!géneros.containsKey(genero)){
            listaLivros.add(livro);
            géneros.put(genero, listaLivros);
        }else{
            géneros.get(genero).add(livro);
        }
        


    }
    public void printAll(){
        System.out.println(géneros);
    }


    public static void main(String[] args) {
        Book rodri = new Book("Rodrigo pé de leão", "Manuel Orvalho", 2300);
        OrganizerBooks biblioteca = new OrganizerBooks();
        biblioteca.addLivroToGender(rodri, "Drama");
        biblioteca.printAll();
        Book antonio = new Book("ZEZE ao", "Sergio Luis", 1902);
        biblioteca.addLivroToGender(antonio, "Drama");
        biblioteca.printAll();
        Book a = new Book("ZEZE ao", "Sergio Luis", 1902);
        biblioteca.addLivroToGender(a, "Drama");
        biblioteca.printAll();
        Book a2 = new Book("ZEZE ao", "Sergio Luis", 1902);
        biblioteca.addLivroToGender(a2, "Drama");
        biblioteca.printAll();
        Book a3 = new Book("ZEZE ao", "Sergio Luis", 1902);
        biblioteca.addLivroToGender(a3, "Drama");
        biblioteca.printAll();
        Book a4 = new Book("ZEZE ao", "Sergio Luis", 1902);
        biblioteca.addLivroToGender(a4, "Drama");
        biblioteca.printAll();




    }
    



    
}
