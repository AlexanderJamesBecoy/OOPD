Damsteen dam1 = new Damsteen(50, 50, 50, #000000);

void setup() {
  size(200, 200);
}

void draw() {
  clear();
  background(200);
  
  dam1.tekenDamsteen();
}

void mouseClicked() {
  dam1.isGeselecteerd();
}

class Damsteen {
  int x, y, diameter, kleur;
  boolean geselecteerd = false;

  Damsteen (int x, int y, int diameter, int kleur) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.kleur = kleur;
  }
  
  void tekenDamsteen() {
    if(geselecteerd) {
      strokeWeight(3);
      stroke(#FFFF00);
    } else {
      noStroke();
    }
    fill(this.kleur);
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
  
  void isGeselecteerd() {
    if(muisBovenCirkel(this.x, this.y, this.diameter))
      geselecteerd = !geselecteerd;
  }
}

boolean muisBovenCirkel(int x, int y, int diameter) {
  float afstand = sqrt(sq(mouseX - x) + sq(mouseY - y));
  return (afstand <= (float)(diameter / 2));
}