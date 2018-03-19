import java.util.Random;

public class Dobbelsteen {
    private int ogen;
        
    public String toString() {
        return "Ogen = " + Integer.toString(ogen);
    }
    
    public void dobbelen() {
        Random rand = new Random();
        int worp = rand.nextInt(6) + 1;
        this.ogen = worp;
    }
    
    public int getOgen() {
        return ogen;
    }
    
}