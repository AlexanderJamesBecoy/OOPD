class KaartAutomaat {
  private String film;
  private float prijs, totaalBedrag;
  final static String NEW_LIJN = "\n\n";
  
  KaartAutomaat(String film, float prijs) {
    this.film = film;
    this.prijs = prijs;
    this.totaalBedrag = 0;
  }
  
  void inwerpen(float inworp) {
    println("U heeft €" + nf(inworp, 0, 2) + " ingworpen.");
    if(inworp > 0) {
      if(inworp >= prijs) {
        if(inworp > prijs && totaalBedrag > 0) {
          float wisselGeld = inworp - prijs;
          this.totaalBedrag -= wisselGeld;
          println("Uw wisselgeld is €" +  wisselGeld + ".");
        } else if (inworp > prijs && totaalBedrag == 0) {
          inworp = prijs;
          println("Sorry, we hebben niet genoeg extra geld voor uw wisselgeld, het spijt ons zeer.");
        }
        tekenKaart();
        this.totaalBedrag += inworp;
      } else {
        println("De prijs is €" + nf(prijs, 0, 2) + " en u gaf €" + nf(inworp, 0, 2) + "\nU bent geld tekort." + NEW_LIJN);
      }
    } else {
      if(inworp < 0)
        println("De ingeworpen bedrag -€" + abs(inworp) + " en is ongeldig." + NEW_LIJN);
      else 
        println("De ingeworpen bedrag €" + inworp + " en is ongeldig." + NEW_LIJN);
    }
  }

  void leegMaken() {
    println("De automaat is geleegd. De automaat heeft €" + nf(totaalBedrag, 0, 2) + " gewonnen.");
    this.totaalBedrag = 0;
  }
  
  void tekenKaart() {
    String ascii = "=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~";
    println(ascii);
    println("> Film: " + film + "\n> Prijs: €" + nf(prijs, 0, 2) + "\n> Veel plezier met de film!");
    println(ascii + NEW_LIJN);
  }

}