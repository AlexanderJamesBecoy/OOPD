
public class DobbelBeker {
	private Dobbelsteen[] stenen;
	
	public DobbelBeker() {
		stenen = new Dobbelsteen[3];
		for (int i = 0; i < stenen.length; i++) {
			stenen[i] = new Dobbelsteen();
		}
	}
	
	public void gooien() {
		for (int i = 0; i < stenen.length; i++) {
			stenen[i].dobbelen();
		}
	}

	public String toString() {
		String printstring = "";
		for (int i = 0; i < stenen.length; i++) {
			printstring += stenen[i].getOgen() + " ";
		}
		return ("Worp: " + printstring);
	}

	public int[] getWaarden() {
		int[] waarden = new int[stenen.length];
		for (int i = 0; i < stenen.length; i++) {
			waarden[i] = stenen[i].getOgen();
		}
		return waarden;
	}
}
