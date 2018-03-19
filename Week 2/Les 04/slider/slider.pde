class Slider {
  float x, y, breedte, hoogte;
  int positie, nPosities;
  
  Slider(float x, float y, float breedte, float hoogte, int positie, int nPosities) {
    this.x = x;
    this.y = y;
    this.breedte = breedte;
    this.hoogte = hoogte;
    this.positie = positie;
    this.nPosities = nPosities;
  }
  
  void tekenSlider() {
    float blokBreedte = breedte / nPosities;
    noStroke();
    fill(255);
    rect(x, y, breedte, hoogte);
    
    fill(#2257F0);
    rect(x + positie * blokBreedte, y, blokBreedte, hoogte);
  }
  
  int bepaalSliderPositie() {
    float blokBreedte = breedte / nPosities;
    
    if(mouseX < x) {
      return 0;
    } else if (mouseX >= breedte + x) {
      return nPosities - 1;
    } else {
      return floor((mouseX - x) / blokBreedte);
    }
  }
}

Slider slider = new Slider(50, 50, 150, 50, 1, 10);

void setup() {
  size(400, 400);
}

void draw() {
  clear();
  
  slider.tekenSlider();
}

void mouseClicked() {
  slider.bepaalSliderPositie();
}