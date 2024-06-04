package Ex5;

import java.util.Scanner;

import javax.xml.crypto.Data;

class Calendar{
    public int[][] eventos;
    int year;
    int firstWeekdayOfYear;
    
    public Calendar(int year, int firstWeekdayOfYear) {
        eventos = new int[12][firstWeekdayOfYear];
        this.year = year;
        this.firstWeekdayOfYear = firstWeekdayOfYear;
    }
    public int getYear(){
        return this.year;
    }
    public int getfirst(){
        return this.firstWeekdayOfYear;
    }
    public int firstWeekdayOfMonth(int month){
        return (firstWeekdayOfYear + diasTotaisAtéAEsteMes(month)) % 7;
    }


    public int diasTotaisAtéAEsteMes(int month) {
        int[] DiasEmMeses = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        int days = 0;
        for (int i = 1; i < month; i++) {
            days += DiasEmMeses[i];
        }
        if (isLeapYear(year) && month > 2) {
            days++; // Adicionar um dia para anos bissextos após fevereiro
        }
        return days;
    }
    public void addEvent(DateYMD date){
        int month = date.getMonth();
        int day = date.getDay();
        eventos[month - 1][day - 1]++;
    }
    public void removeEvent(DateYMD date) {
        
            int month = date.getMonth();
            int day = date.getDay();
            if (eventos[month - 1][day - 1] > 0) {
                eventos[month - 1][day - 1]--;
            }

    }
    public void printMonth(int month){
        int daysInMonth = monthDays(month, year);
        int firstWeekdayOfMonth = firstWeekdayOfMonth(month);
        System.out.println(MonthName(month) + " " + year);
        System.out.println("Su Mo Tu We Th Fr Sa");
        for (int i = 1; i < firstWeekdayOfMonth; i++) {
            System.out.print("   ");
        }
        for (int day = 1; day <= daysInMonth; day++) {
            if (eventos[month - 1][day - 1] > 0) {
                System.out.print("*");
            }
            System.out.printf("%2d ", day);
            if ((firstWeekdayOfMonth + day - 1) % 7 == 0) {
                System.out.println();
            }
        }
        System.out.println();
    }
    
 
    public String toString() {
        
        String s="";
        for (int month = 1; month <= 12; month++) {
            printMonth(month);
            s += "\n";
            
        }
        return s;
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





    public boolean isLeapYear(int year) {
        return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
    }
    
    public String MonthName(int month) {
        String[] months = {"January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December"};
        return months[month - 1];
    }
}
















public class Calendario {
 public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
        Calendar calendario = null;

        boolean loop = true;
        do {
            System.out.println("Calendar operations:");
            System.out.println("1 - create new calendar");
            System.out.println("2 - print calendar month");
            System.out.println("3 - print calendar");
            System.out.println("0 - exit");

            int option = sc.nextInt();
            switch (option) {
                case 1:
                    System.out.println("Year: ");
                    int year = sc.nextInt();
                    System.out.println("First weekday of the year (entre 1-domingo e 7-sábado): ");
                    int firstWeekdayOfYear = sc.nextInt();
                    calendario = new Calendar(year, firstWeekdayOfYear);
                    break;
                case 2:
                    if (calendario != null) {
                        System.out.println("Month (1-January, 2-February, ..., 12-December): ");
                        int month = sc.nextInt();
                        calendario.printMonth(month);
                    } else {
                        System.out.println("Use first option.");
                    }
                    break;
                case 3:
                    if (calendario != null) {
                        System.out.println(calendario);
                    } else {
                        System.out.println("Use first option.");
                    }
                    break;
                case 0:
                    loop = false;
                    break;
                default:
                    break;
            }
        }while(loop == true);
    }
}

