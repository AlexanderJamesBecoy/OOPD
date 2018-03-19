class Damsteen {
  float x, y, d;
  int kleur;
  
  Damsteen(float x, float y, float d, int kleur) {
    this.x = x;
    this.y = y;
    this.d = d;
    this.kleur = kleur;
  }
  
  void tekenDamsteen() {
    fill(kleur);
    ellipse(x, y, d, d);
  }

}

class Dambord {
  Damsteen[] stenen;
  
  Dambord(Damsteen[] stenen) {
    this.stenen = stenen;
  }
  
  void tekenDamstenen() {
    for(int steen = 0; steen < stenen.length; steen++) {
      stenen[steen].tekenDamsteen();
    }
  }
  
}