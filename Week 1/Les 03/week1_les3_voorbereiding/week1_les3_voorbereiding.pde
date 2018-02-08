/* Opgave Damsteen deel 1  */
Damsteen damsteen1 = new Damsteen(200, 200, 50, #FFFFFF);
Damsteen damsteen2 = new Damsteen(160, 360, 50, #000000);

void setup() {
  size(400, 400);
  for(int i = 0; i < 8; i++)
  {
    for(int j = 0; j < 8; j++)
    {
      if((j + i) % 2 == 0)
      {
        fill(#DDDDDD);
      } else {
        fill(#AAAAAA);
      }
      noStroke();
      rect(j * 50, i * 50, 50, 50);
    }
  }
  
  damsteen1.teken();
  damsteen2.teken();
}

void draw() {
  
}

class Damsteen {
  int x, y, diameter;
  color kleur;
  
  Damsteen(int x, int y, int diameter, color kleur) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.kleur = kleur;
  }
  
  void teken() {
    fill(kleur);
    ellipse(x, y, diameter, diameter);
  }
}