public class MainApp {
    public static void main(String[] args) {
        ChuckALuck spel = new ChuckALuck(100);
        
        spel.speelRonde(3, 5);
        System.out.println(spel);
        
        spel.speelRonde(3, 20);
        System.out.println(spel);
        
        spel.speelRonde(4, 10);
        System.out.println(spel);       
    }
}
