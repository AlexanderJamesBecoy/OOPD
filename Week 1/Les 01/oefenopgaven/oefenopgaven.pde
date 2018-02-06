/* Les 1 lesprogramma
Alexander James Becoy - I1DC */

void setup() {
  println("Opgave Delen");
  println(floatDelen(5,2));
  println(floatDelen(5,2));
  println(floatDelen(3,2));
  println(floatDelen(1,4));
  println(floatDelen(2,6) + "\n");
  
  println("Zoeken in een array");
  int[] lijst = {0, 1, 2, 3, 4};
  println(komtGetalVoorIn(1, lijst));
  println(komtGetalVoorIn(3, lijst));
  println(komtGetalVoorIn(10, lijst));
  println(komtGetalVoorIn(5, lijst) + "\n");
}

float floatDelen(int intTeller, int intNoemer) {
  float teller = (float)intTeller;
  float noemer = (float)intNoemer;
  if(noemer == 0)
    return 0;
  else
    return teller / noemer;
}

boolean komtGetalVoorIn(int getal, int[] lijst) {
  for(int i = 0; i < lijst.length; i++) {
    if(getal == lijst[i])
      return true;
  }
  return false;
}