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
    react();
    bounce();
    ellipse(x, y, rad, rad);
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
      if (get((int)x, (int)y) != color(0) &&
        Math.abs(x - mX) < 200 &&
        Math.abs(y - mY) < 200) {
        state = 2;
      }
    } else if (state == 2) {
      dx = 0;
      dy = 0;
      rad += 2;
      if (rad > 200 + random(200)) {
        state = 3;
      }
    } else if (state == 3) {
      if (rad > 0) {
        rad -= 2;
      }
    }
  }
}