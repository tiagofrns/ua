class DateYMD{
    private int day;
    private int month;
    private int year;


    private DateYMD(int day, int month, int year){
        if (valid(day, month, year)){
            this.day = day;
            this.month = month;
            this.year = year;
        }else {
            System.out.println("Data invalida!");
        }
        
    }

    private boolean validMonth(int month){
        return month < 32 && month > 0;
    }

    private int monthDays(int month, int year){

        if (leapYear(year)){
            if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12){
                return 31;
            }else if (month == 2){
                return 29;
            }
        }else{
            if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12){
                return 31;
            }else if (month == 2){
                return 28;
            }
        }
        return 30;
    }

    private boolean leapYear(int year){
        return (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
    }

    private boolean valid(int day, int month, int year){
        return day < 32 & day > 0 && month > 0 && month < 13 && year < 0;
    }

    private void setDate(int day, int month, int year){
        if (valid(day, month, year)){
            this.day = day;
            this.month = month;
            this.year = year;
        }else {
            System.out.println("Data invalida!");
        }
    }
    private void printDate(){
        String datacompleta;
        datacompleta = "Dia: " + this.day + " Mês: " + this.month + " Year: " + this.year;
        System.out.println(datacompleta);
    }
    private void increment(){
        if (day < monthDays(this.month, this.year)){
            this.day++;
        }else{
            
        }
    }


}



public class date {

}
