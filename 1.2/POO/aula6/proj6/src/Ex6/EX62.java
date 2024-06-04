package Ex6;
import Ex6.EX61;
import java.util.ArrayList;
import java.util.List;
/**
 * AddPessoa
 */
class AddPessoa {
    private int id;
    private static int idCounter = 0;
    private Pessoa individuo;
    private int num;
    private String email;
    private static List<AddPessoa> listaAddPessoas = new ArrayList<>();

    public AddPessoa(Pessoa individuo, int mun, String email){
        this.id = ++idCounter;
        if ((Integer.parseInt(Integer.toString(num).substring(0, 1)) == 9 && String.valueOf(num).length()== 9) || ( email.contains("@") && email.contains(".") )){
            this.email = email;
            this.num = num;
            this.individuo = individuo;
            listaAddPessoas.add(this); // usar isto para procurar por nome, email, ... e para ver repetiçoes
        }
    }
    public Pessoa getIndividuo() {
        return individuo;
    }
    public static boolean existePessoa(Pessoa individuo) {
            for (AddPessoa addPessoa : listaAddPessoas) {
                if (addPessoa.getIndividuo().equals(individuo)) {
                    return true;
                }
            }
            return false;
        }
        



    }
    







public class EX62 {

    public static void main(String[] args) {
        
    }

}
