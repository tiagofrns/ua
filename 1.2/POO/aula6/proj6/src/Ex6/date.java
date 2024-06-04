package Ex6;
import java.util.Scanner;

class DateYMD{
    int day;
    int month;
    int year;
    public static int countobj=0;

    public DateYMD(int day, int month, int year){
        if (valid(day,month,year)){
            this.day = day;
            this.month = month;
            this.year = year;
            this.countobj += 1;
        }else{
            System.out.println("Not a valid date!");
        }

    }


    public DateYMD() {
        // Obtém a data atual do sistema
        java.util.Date today = new java.util.Date();
        java.util.Calendar cal = java.util.Calendar.getInstance();
        cal.setTime(today);
        this.year = cal.get(java.util.Calendar.YEAR);
        this.month = cal.get(java.util.Calendar.MONTH) + 1; 
        this.day = cal.get(java.util.Calendar.DAY_OF_MONTH);
    }



    public boolean validMonth(int month){
        if (month >=1 && month <= 12){
            return true;
        }
        return false;
    }
    public int monthDays(int month, int year){
        if (leapYear(year)){
            if (month == 2){
                return 29;
            }
            else if (month == 4 || month == 6 || month == 9 || month == 11){
                return 30;
            }else{
                return 31;
            }
            }
        else{
            if (month == 2){
                return 28;
            }else if (month == 4 || month == 6 || month == 9 || month == 11) {
                return 30;
            }else{
                return 31;
            }
        }
    }
    public boolean leapYear(int year){
        if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0){
            return true;    
        }
        return false;

    }
    public boolean valid(int day, int month, int year){
        
        if (day > 0  && month > 0 && month <= 12 && year > 0){
            if (day < monthDays(month, year)) {
                return true;
            }
            
        }
        return false;
    }
    public void set(int day, int month, int year){
        if (valid(day,month,year)){
            this.day = day;
            this.month = month;
            this.year = year;
        }else{
            System.out.println("Not a valid date!");
        }
    }
    public void consultar(){
        System.out.println("day: "+this.day+" month: "+ this.month + " year: "+ this.year);
    }
    public void increment(){
        if (this.day < monthDays(this.month,this.year)){
            this.day += 1;
        } else if (this.month < 12){
            this.day = 1;
            this.month +=1;
        }else{
            this.day = 1;
            this.month = 1;
            this.year += 1;
        }
    }
    public void decrement(){
        if (this.day > 1){
            this.day -= 1;
        } else if (this.month > 1){
            this.day = monthDays(this.month -1,this.year);
            this.month -=1;
        }else{
            this.day = monthDays(this.month -1,this.year);
            this.month = 12;
            this.year -= 1;
        }
    }
    public String toString(){
        return this.year + ":" + this.month + ":" + this.day;
    }
    public int count(){
        return this.countobj;
    }
    public int getMonth(){
        return this.month;
    }
    public int getDay(){
        return this.day;
    }

}








public class date {
    public static void main(String[] args) throws Exception {
        boolean loop = true;
        int day;
        int month;
        int year;
        int option;
        DateYMD data = null;
        Scanner sc = new Scanner(System.in);
        do{
            System.out.println("Date operations:");
            System.out.println("1 - create new date");
            System.out.println("2 - show current date");
            System.out.println("3 - increment date");
            System.out.println("4 - decrement date");
            System.out.println("0 - exit");
            option = sc.nextInt();
            if (option == 0) {
                loop = false;
                break;
            }else if (option == 1){
                System.out.println("day: ");
                day = sc.nextInt();
                System.out.println("month: ");
                month = sc.nextInt();
                System.out.println("year: ");
                year = sc.nextInt();
                data = new DateYMD(day,month,year);
                
            }else if(option == 2){
                int counter = DateYMD.countobj;
                if (counter > 0){
                    System.out.println(data); // use object "data" here
                }else{
                    System.out.println("choose the first option to create a date, thank's!");
                }
                
            }else if (option == 3){
                data.increment();
            }else if (option == 4){
                data.decrement();
            }
            

        }while(loop = true);
    }
}
