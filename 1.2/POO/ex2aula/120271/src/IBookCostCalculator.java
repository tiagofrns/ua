public interface IBookCostCalculator {
   
    // days is the number of days of book loan
    public double calculateCost(int days);

}

class BookCostCalculator implements IBookCostCalculator{
    
    public double calculateCost(int days){
        return calculateCostStatic(days);
    }
    
    public static double calculateCostStatic(int days){
        double cost;
        if (days < 7){
            return cost = 3*days;
        }
        else {
            cost = 3*days;
            cost += 0.8*(days-6);
            return cost;
        }
    }
}
