package Exx44;

import java.util.Scanner;

class Car {
    public String make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        this.kms += distance;
    }
    public String toString(){
        return make + "  " + model + ", " + year + ",kms: " + kms;
    }

}

public class CarDemo {

    static Scanner sc = new Scanner(System.in);

    static int registerCars(Car[] cars) {
        // TODO: pede dados dos carros ao utilizador e acrescenta ao vetor
        // registo de carros termina quando o utilizador inserir uma linha vazia 
        // devolve número de carros registados
        System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
   }

    static void registerTrips(Car[] cars, int numCars) {
        // TODO: pede dados das viagens ao utilizador e atualiza informação do carro
        // registo de viagens termina quando o utilizador inserir uma linha vazia 
        System.out.print("Registe uma viagem no formato \"carro:distância\": ");
    }


    static void listCars(Car[] cars) {
        System.out.println("\nCarros registados: ");
        
        for (Car c: cars){
            System.out.println(c);
        }
        
        System.out.println("\n");
    }
    public static boolean isValidYear(String year) {
        try {
            int y = Integer.parseInt(year);
            return year.length() == 4 && y > 0;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public static boolean isValidMileage(String mileage) {
        try {
            int m = Integer.parseInt(mileage);
            return m >= 0;
        } catch (NumberFormatException e) {
            return false;
        }
    }
    public static void main(String[] args) {
        String inputcar;
        Car[] cars = new Car[10];

        int numCars = registerCars(cars);
        for (int i= 0; i<10;i++){
            inputcar = sc.next();
            String texto[] = inputcar.split(" ");

            //cars[i] = new Car();
        }

        if (numCars>0) {
            listCars(cars);
            registerTrips(cars, numCars);
            listCars(cars);
        }

        sc.close();

    }
}