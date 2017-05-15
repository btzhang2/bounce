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
    c = color(random(256), random(256), random(256));
    dx = random(10);
    dy = random(10);
    state = 0;
  }

  void move() {
    x = x + dx;
    y = y + dy;
    fill(c);  
    ellipse(x, y, rad, rad);
    bounce();
    react();
  }

  void bounce() {
    if (x > 800 || x < 0) {
      dx = -1 * dx;
    }
    if (y > 800 || y < 0) {
      dy = -1 * dy;
    }
  }

  void react() {
    if (state == 1) {
      dx = 0;
      dy = 0;
      rad += 2;
      if (rad > 200 + random(200)) {
        state = 2;
      }
    } else if (state == 2) {
      if (rad > 0) {
        rad -= 2;
      }
    }
  }
}