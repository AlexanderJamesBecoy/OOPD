final int GROUND = 50;
float a = 9.81;
Ball ball = new Ball(40, 40, 20);

void setup() {
  size(400, 400);
}

void draw() {
  clear();
  refreshBackground();
  
  ball.update();
}

void mouseClicked() {
  //ball.moveCircle(mouseX, mouseY);
}

void refreshBackground() {
  background(150);
  fill(#442200);
  rect(0, height - GROUND, width, height);
}

class Ball {
  int s = millis();
  float xpos, ypos, radius, v;
  Ball(float x, float y, float r) {
    xpos = x;
    ypos = y;
    radius = r;
  }
  void drawCircle() {
    fill(#FF0000);
    ellipse(xpos, ypos, radius * 2, radius * 2);
  }
  void update() {
    if(ypos <= 350) {
      ypos += v;
    }
    if(millis() > (s + 1000)) {
      v += 9.81;
      s = millis();
    }
    drawCircle();
  }
  void moveCircle(int x, int y) {
    xpos = x;
    ypos = y;
  }
}