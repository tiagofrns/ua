import java.util.*;

class Book {
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
        return title + " by " + author + " (" + year + ")";
    }
}

public class ex12 {
    Map<String, List<Book>> genreBooks;

    public ex12() {
        genreBooks = new HashMap<>();
    }

    public void addBook(String genre, Book book) {
        genreBooks.computeIfAbsent(genre, k -> new ArrayList<>()).add(book);
    }

    public void removeBook(String genre, Book book) {
        if (genreBooks.containsKey(genre)) {
            genreBooks.get(genre).remove(book);
            if (genreBooks.get(genre).isEmpty()) {
                genreBooks.remove(genre);
            }
        } else {
            System.out.println("Genre not found.");
        }
    }

    public Book getRandomBook(String genre) {
        List<Book> books = genreBooks.get(genre);
        if (books != null && !books.isEmpty()) {
            Random random = new Random();
            return books.get(random.nextInt(books.size()));
        } else {
            return null;
        }
    }
    public void updateBook(String oldGenre, Book oldBook, String newGenre, Book newBook) {
        removeBook(oldGenre, oldBook);
        addBook(newGenre, newBook);
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();
        for (Map.Entry<String, List<Book>> entry : genreBooks.entrySet()) {
            String genre = entry.getKey();
            List<Book> books = entry.getValue();
            result.append(genre).append(":\n");
            for (Book book : books) {
                result.append("\t").append(book.toString()).append("\n");
            }
        }
        return result.toString();
    }

    
    
}





