
public class ChuckALuck {
    private int saldo;
    private int ronde;
    private int geluksgetal;
    private DobbelBeker beker; 
    
    public ChuckALuck(int saldo) {
        this.saldo = saldo;
        ronde = 0;
        beker = new DobbelBeker();
    }
    
    public void speelRonde(int geluksgetal, int inzet) {
    	beker.gooien();
        this.geluksgetal = geluksgetal;
        ronde++;

        if(controleerFactor(beker.getWaarden()) == 0) {
            saldo -= inzet;
        } else {
            saldo += inzet * controleerFactor(beker.getWaarden());
        }
    }
    
    public int controleerFactor(int[] worp) {
        int teller = 0;
        for(int i = 0; i < worp.length; i++) {
            if(worp[i] == geluksgetal) {
                teller++;
            }
        }
        
        if(teller == 3) {
            teller =  10;
        }
        
        return teller;
    }
    
    public String toString() {
        return "Ronde: " + ronde + "\ngeluksgetal: " + geluksgetal + "\n" + beker.toString() + "\nsaldo: " + saldo + "\n" + "-------------------"; 
    }
}
