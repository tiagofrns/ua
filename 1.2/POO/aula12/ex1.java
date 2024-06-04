import java.io.File;  // Import the File class
import java.io.FileNotFoundException;  // Import this class to handle errors
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner; // Import the Scanner class to read text files


public class ex1 {
    public static void main(String[] args) {
        Map<String, Integer> dictMap = new HashMap<>();
        try{
            File myObj = new File("pal.txt");
            Scanner myReader = new Scanner(myObj);
            while ( myReader.hasNext()){
                String data = myReader.next();
                if (dictMap.get(data) == null){
                    dictMap.put(data,1);
                }else{
                    dictMap.put(data, dictMap.get(data) + 1);
                }
            }
    
            System.out.println(dictMap);
    
        }
        catch (FileNotFoundException e){
            System.out.println("Error");
        }
    }
    

}