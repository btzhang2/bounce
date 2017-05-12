class Ball {
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;

  Ball() {
    x = random(1000);
    y = random(1000);
    rad = 50;
    c = 1;
    dx = random(10) + 5;
    dy = random(10) + 5;
  }

  void move() {
    x = x + dx;
    y = y + dy;
    ellipse(x, y, rad, rad);
    bounce();
  }

  void bounce() {
  }
}