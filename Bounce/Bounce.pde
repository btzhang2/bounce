void setup() {
  size(800, 800);
  background(0);
  noStroke();
}

Ball[] arrBall = null;
int state = 0;
int mX;
int mY;

void draw() {
  background(0);
  if (arrBall != null) {
    for (Ball b : arrBall) {  
      b.move();
    }
  }
}

void mouseClicked() {
  if (state == 0) {
    arrBall = new Ball[50];
    for (int i = 0; i < arrBall.length; i++) {
      arrBall[i] = new Ball();
    }
    state = 1;
  } else if (state == 1) {
    mX = mouseX;
    mY = mouseY;
    for (int i = 0; i < arrBall.length; i++) {
      arrBall[i].state = 1;
    }
    state = 2;
  }
}