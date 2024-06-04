import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* 
public class CollectionTester {
    public static void main(String[] args) {
        int DIM = 5000;
        Collection<Integer> col = new ArrayList<>();
        checkPerformance(col, DIM);
    }
    private static void checkPerformance(Collection<Integer> col, int DIM) {
    double start, stop, delta;
    // Add
    start = System.nanoTime(); // clock snapshot before
    for(int i=0; i<DIM; i++ )
    col.add( i );
    stop = System.nanoTime(); // clock snapshot after
    delta = (stop-start)/1e6; // convert to milliseconds
    System.out.println(col.size()+ ": Add to " +
    col.getClass().getSimpleName() +" took " + delta + "ms");
    // Search
    start = System.nanoTime(); // clock snapshot before
    for(int i=0; i<DIM; i++ ) {
    int n = (int) (Math.random()*DIM);
    if (!col.contains(n))
    System.out.println("Not found???"+n);
    }
    stop = System.nanoTime(); // clock snapshot after
    delta = (stop-start)/1e6; // convert nanoseconds to milliseconds
    System.out.println(col.size()+ ": Search to " +
    col.getClass().getSimpleName() +" took " + delta + "ms");
    // Remove
    start = System.nanoTime(); // clock snapshot before
    Iterator<Integer> iterator = col.iterator();
    while (iterator.hasNext()) {
    iterator.next();
    iterator.remove();
    }
    stop = System.nanoTime(); // clock snapshot after
    delta = (stop-start)/1e6; // convert nanoseconds to milliseconds
    System.out.println(col.size() + ": Remove from "+
    col.getClass().getSimpleName() +" took " + delta + "ms");
    }
    }

*/
import java.util.*;

public class CollectionTester {
    public static void main(String[] args) {
        int[] dimensions = {1000, 5000, 10000, 20000, 40000, 100000};
        String[] collectionNames = {"ArrayList", "LinkedList", "HashSet", "TreeSet"};
        
        System.out.printf("%-10s%-10s%-10s%-10s%-10s%-10s%n", "Collection", "1000", "5000", "10000", "20000", "40000", "100000");
        for (String collectionName : collectionNames) {
            System.out.printf("%-10s", collectionName);
            for (int dim : dimensions) {
                Collection<Integer> col = createCollection(collectionName);
                double[] measurements = checkPerformance(col, dim);
                System.out.printf("%-10.2f", measurements[0]); // Add
                System.out.printf("%-10.2f", measurements[1]); // Search
                System.out.printf("%-10.2f", measurements[2]); // Remove
            }
            System.out.println();
        }
        System.out.println("Olá Tiago!");
    }

    private static Collection<Integer> createCollection(String collectionName) {
        switch (collectionName) {
            case "ArrayList":
                return new ArrayList<>();
            case "LinkedList":
                return new LinkedList<>();
            case "HashSet":
                return new HashSet<>();
            case "TreeSet":
                return new TreeSet<>();
            default:
                throw new IllegalArgumentException("Invalid collection name: " + collectionName);
        }
    }

    private static double[] checkPerformance(Collection<Integer> col, int DIM) {
        double start, stop, delta;
        double[] measurements = new double[3];

        // Add
        start = System.nanoTime();
        for (int i = 0; i < DIM; i++)
            col.add(i);
        stop = System.nanoTime();
        delta = (stop - start) / 1e6;
        measurements[0] = delta;

        // Search
        start = System.nanoTime();
        for (int i = 0; i < DIM; i++) {
            int n = (int) (Math.random() * DIM);
            col.contains(n);
        }
        stop = System.nanoTime();
        delta = (stop - start) / 1e6;
        measurements[1] = delta;

        // Remove
        start = System.nanoTime();
        Iterator<Integer> iterator = col.iterator();
        while (iterator.hasNext()) {
            iterator.next();
            iterator.remove();
        }
        stop = System.nanoTime();
        delta = (stop - start) / 1e6;
        measurements[2] = delta;

        return measurements;
    }
}