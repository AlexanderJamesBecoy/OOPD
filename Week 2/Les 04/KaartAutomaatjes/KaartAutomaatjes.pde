
void setup() {
  KaartAutomaat ka = new KaartAutomaat("Amel Shippuden", 9.50);
  // Genoeg
  ka.inwerpen(9.50);
  // Teveel
  ka.inwerpen(10.50);
  // Te weinig
  ka.inwerpen(8.50);
  
  ka.leegMaken();
  // Ongeldig
  ka.inwerpen(0);
  // Ongeldig
  ka.inwerpen(-8.50);
  // Teveel en geen wisselgeld
  ka.inwerpen(12.50);
  //ka.inwerpen(9.50);
  
  ka.leegMaken();
  
  noLoop();
  exit();
}

void draw() {
  
}