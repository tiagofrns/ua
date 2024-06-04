
import java.util.*;
import java.io.FileReader;
import java.io.IOException;

/**
 * Gradebook
 */
class Gradebook {
    ArrayList<Student> students;

    public Gradebook(){
       students = new ArrayList<Student>();
    }
    public void load (String fname) throws IOException{
        Scanner input = new Scanner(new FileReader(fname));
        while (input.hasNext()) {
            String word = input.next();
            System.out.println(word);
        }
    }
    public void removeStudent(String estudante){
        students.remove(estudante);
    }
    public void addStudent(Student estudante){
        students.add(estudante);
    }
    public Student getStudent(String estudante){
        for(Student s : students) {

            if (s.getName() == estudante){
                return s;
            }
            return null;
        
        }
        System.out.println("ERROR");
    
    }
    public double calculateAverageGrade(Student s){
        
        double media=0;
        for(double nota :s.getGrades()){
            media += nota;
        }
        return media;
    }

}

public class GradebookTester {
    public static void main(String[] args) {
        // Create a new Gradebook instance
        Gradebook gradebook = new Gradebook();

        // Load the student data from a text file
        gradebook.load("alunos.txt");

        // Add a new student to the collection
        Student newStudent = new Student("Johny May", new ArrayList<>(List.of(10.0, 15.0, 19.0)));
        gradebook.addStudent(newStudent);

        // Remove a student from the collection
        gradebook.removeStudent("Jane Smith");

        // Retrieve a student from the collection
        Student student = gradebook.getStudent("John Doe");

        // Calculate the average grade for a specific student
        double averageGrade = gradebook.calculateAverageGrade("John Doe");
        System.out.println("Average grade for John Doe: " + averageGrade);

        // Print a summary of all students in the collection
        gradebook.printAllStudents();
    }
}

