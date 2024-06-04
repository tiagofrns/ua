import java.util.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.File;


class EnergyUsageReport {
    ArrayList<Double> leituras;
    Map<Integer,ArrayList<Double>> clientes;

    public EnergyUsageReport(){
        clientes = new HashMap<>();
        
    }

    public void load(String fname) throws FileNotFoundException{
        File myFile = new File(fname);
        Scanner myReader = new Scanner(myFile);
        while (myReader.hasNextLine()) {

            leituras = new ArrayList<>();
            String line = myReader.nextLine();
            //System.out.println(line);
            String[] splitted = line.split("\\|");
            System.out.println(splitted[0]);
            int id = Integer.parseInt(splitted[0]);
            double leitura1 = Double.parseDouble(splitted[1]);
            double leitura2 = ( Double.parseDouble(splitted[2]));
            double leitura3 = ( Double.parseDouble(splitted[3]));
            double leitura4 = ( Double.parseDouble(splitted[4]));
            leituras.add(leitura1);
            leituras.add(leitura2);
            leituras.add(leitura3);
            leituras.add(leitura4);
            
            clientes.put(id, leituras);
            leituras.clear();
            

            
        }

        
    }


    public void addCustomer(Customer c){
        clientes.put(c.getCustomerId(), (ArrayList<Double>) c.getMeterReadings());
    }
}



public class EnergyUsageReportTester {

    public static void main(String[] args) throws IOException {
        try{
            // Create an instance of the EnergyUsageReport class
            EnergyUsageReport energyReport = new EnergyUsageReport();
        
        // Load the customer data from a text file using the load() method
            energyReport.load("clients.txt");
        
        // Add one or more customers to the collection using the addCustomer() method
            Customer newCustomer = new Customer(999, Arrays.asList(1500.0, 2000.0, 2500.0, 3000.0));
            energyReport.addCustomer(newCustomer);
        
        // Remove one or more customers from the collection using the removeCustomer() method
            //energyReport.removeCustomer(1015);
        
        // Retrieve a customer from the collection using the getCustomer() method
            //Customer retrievedCustomer = energyReport.getCustomer(1025);
        
        // Calculate the total energy usage for a specific customer using the calculateTotalUsage() method
            //double totalEnergyUsage = energyReport.calculateTotalUsage(1003);
           // System.out.println("Total energy usage for customer 1003: " + totalEnergyUsage);
        
        // Generate a report of all customers and their total energy usage using the generateReport() method
            //energyReport.generateReport("energy_report.txt");
        }catch(FileNotFoundException e){
            System.out.println("ERROR NO FILE");
        }
    }
}
