import java.io.File;
import java.io.FileNotFoundException;
import java.nio.file.FileAlreadyExistsException;
import java.util.*;

class Movie{
    String name;
    double score;
    String rating;
    String genre;
    int runningTime;
    
    
    public Movie(String name, double score, String rating, String genre, int runningTime) {
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.runningTime = runningTime;
    }


    public String getName() {
        return name;
    }


    public void setName(String name) {
        this.name = name;
    }


    public double getScore() {
        return score;
    }


    public void setScore(double score) {
        this.score = score;
    }


    public String getRating() {
        return rating;
    }


    public void setRating(String rating) {
        this.rating = rating;
    }


    public String getGenre() {
        return genre;
    }


    public void setGenre(String genre) {
        this.genre = genre;
    }


    public int getRunningTime() {
        return runningTime;
    }


    public void setRunningTime(int runningTime) {
        this.runningTime = runningTime;
    }


    @Override
    public String toString() {
        return "Movie [name=" + name + ", score=" + score + ", rating=" + rating + ", genre=" + genre + ", runningTime="
                + runningTime + "]";
    }

    

    
}
class CustomComparator implements Comparator<Movie> {
    @Override
    public int compare(Movie o1, Movie o2) {
        return Double.compare(o1.getScore(), o2.getScore());
    }
}

class MoviesSort {
    ArrayList<Movie> movies;
    String fname;
    public MoviesSort(String fname){
        this.fname = fname;
    }
    
    public void load() throws FileNotFoundException{

    
    int i=0;
    movies = new ArrayList<>();
    

    File myFile = new File(fname);
    Scanner myReader = new Scanner(myFile);

    while(myReader.hasNextLine()){
        String input = myReader.nextLine();
        if(i > 0){
            String[] inputvec = input.split("\t");
            
            
            double value1 = Double.parseDouble(inputvec[1]);
            int value4 = Integer.parseInt(inputvec[4]);
            Movie m = new Movie("\n" +inputvec[0], value1, inputvec[2], inputvec[3], value4);
            movies.add(m);
            //System.out.println(inputvec[0] + value1 + inputvec[2] + inputvec[3] + value4);

        }
        i++;


    }

    
    System.out.println(movies);

    System.out.println("-----------------------------------------");

    movies.sort(new CustomComparator().reversed());
    System.out.println(movies);



}
}

















public class ex3 {
    public static void main(String[] args)  throws FileNotFoundException{
        MoviesSort novof = new MoviesSort("movies.txt");
        novof.load();
    }
    


    

}