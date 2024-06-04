import java.util.*;

import javax.xml.stream.util.StreamReaderDelegate;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.io.FileReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

class BookManager{
    ArrayList<Book> livros;

    public BookManager(){
        livros = new ArrayList<Book>();
    }
    public void addBook (Book b){ 
        livros.add(b);
    }
    public void removeBook ( int id){
        for ( Book b: livros){
            if (b.getId() == id){
                livros.remove(b);
            }
        }
    }
    public Book getBook(int id){
        for ( Book b: livros){
            if (b.getId() == id){
                return b;
            }
        }
        return null;
        
    }
    public double calculateBookLoanCost(int days, int id){
        boolean Valido = false;
        for ( Book b: livros){
            if (b.getId() == id){
                Valido = true;
            }
        }
        if (Valido){
            return BookCostCalculator.calculateCostStatic(days);
        }else{
            return 0.0;
        }
        
    }
    
    public void printAllBooks(){
        for ( Book b: livros){
            System.out.println(b+"\n");
        }
    }
    public void readFile(String fname) throws IOException{
        int i=0;
        Scanner input = new Scanner(new FileReader(fname));
        while (input.hasNextLine()) {
            if (i != 0){
                String frase = input.nextLine();
                System.out.println(frase);
                String[] splited = frase.split("\s");
                System.out.println(splited);
                Book livro = new Book(splited[0], splited[1], splited[2],splited[3], splited[4]);
                
                addBook(livro);

            }  
            i++;  
   
            
        }
    }
    public void writeFile(String fname) throws IOException{
        File newFile = new File(fname);
        FileWriter FileWrite = new FileWriter(fname);
      
        for (Book b: livros){
            FileWrite.write(b + "\n");

        }
        FileWrite.close();
    }




}

class Book {
    int id=1;
    static int incre = 1;
    String nomeLivro;
    String Autor;
    String editora;
    String ISBN;
    LocalDate dataLançamento;
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    public Book(String nomeLivro, String Autor, String editora, String iSBN, String dataLançamento) {
        id += incre;
        this.nomeLivro = nomeLivro;
        this.Autor = Autor;
        this.editora = editora;
        this.ISBN = iSBN;
        
        this.dataLançamento = LocalDate.parse(dataLançamento,formatter);

        
    }
    

    public int getId() {
        return id;
    }


    public void setId(int id) {
        this.id = id;
    }



    public String getNomeLivro() {
        return nomeLivro;
    }


    public void setNomeLivro(String nomeLivro) {
        this.nomeLivro = nomeLivro;
    }



    public String getAutor() {
        return Autor;
    }


    public void setAutor(String autor) {
        Autor = autor;
    }


    public String getEditora() {
        return editora;
    }


    public void setEditora(String editora) {
        this.editora = editora;
    }


    public String getISBN() {
        return ISBN;
    }


    public void setISBN(String iSBN) {
        ISBN = iSBN;
    }




    public LocalDate getDataLançamento() {
        return dataLançamento;
    }


    public void setDataLançamento(LocalDate dataLançamento) {
        this.dataLançamento = dataLançamento;
    }


    @Override
    public String toString() {
        return "Nome do livro: " + nomeLivro + "\sAutor: " + Autor + "\sEditora: " + editora + "\sISBN: " + ISBN + "\sData de Lançamento: " + dataLançamento.format(formatter);
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + id;
        result = prime * result + ((nomeLivro == null) ? 0 : nomeLivro.hashCode());
        result = prime * result + ((Autor == null) ? 0 : Autor.hashCode());
        result = prime * result + ((editora == null) ? 0 : editora.hashCode());
        result = prime * result + ((ISBN == null) ? 0 : ISBN.hashCode());
        result = prime * result + ((dataLançamento == null) ? 0 : dataLançamento.hashCode());
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
        Book other = (Book) obj;
        if (id != other.id)
            return false;
        if (nomeLivro == null) {
            if (other.nomeLivro != null)
                return false;
        } else if (!nomeLivro.equals(other.nomeLivro))
            return false;
        if (Autor == null) {
            if (other.Autor != null)
                return false;
        } else if (!Autor.equals(other.Autor))
            return false;
        if (editora == null) {
            if (other.editora != null)
                return false;
        } else if (!editora.equals(other.editora))
            return false;
        if (ISBN == null) {
            if (other.ISBN != null)
                return false;
        } else if (!ISBN.equals(other.ISBN))
            return false;
        if (dataLançamento == null) {
            if (other.dataLançamento != null)
                return false;
        } else if (!dataLançamento.equals(other.dataLançamento))
            return false;
        return true;
    }


    


    


    
}



public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
    }
}
