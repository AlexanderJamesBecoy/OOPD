Dambord dambord;
Damsteen[] damstenen = new Damsteen[16];

void setup() {
  size(400, 400);
  float d = 20;
  int counter = 0;
  for(int i = 0; i < 4; i++) {
    for(int j = 0; j< 4; j++) {
      damstenen[counter] = new Damsteen(d + d * 2 * j, d + 2 * d * i, d, #000000);
      counter++;
    }
  }
  dambord = new Dambord(damstenen);
  dambord.tekenDamstenen();
}