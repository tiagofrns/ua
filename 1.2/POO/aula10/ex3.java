import java.util.*;
public class ex3 {
    public static void main(String[] args) {
        String input = "Hello World";
        Map<Character, List<Integer>> occurrences = new HashMap<>();

        
        for (int i = 0; i < input.length(); i++) {
            char c = input.charAt(i);
            
            if (occurrences.containsKey(c)) {
               
                occurrences.get(c).add(i);
            } else {
                
                List<Integer> positions = new ArrayList<>();
                positions.add(i);
                occurrences.put(c, positions);
            }
        }

        // Imprimir o resultado
        System.out.println("Ocorrências dos caracteres na string:");
        for (Map.Entry<Character, List<Integer>> entry : occurrences.entrySet()) {
            System.out.println(entry.getKey() + " = " + entry.getValue());
        }
    }
}