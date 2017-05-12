void setup() {
  size(1000, 1000);
  background(0);
}

void draw() {
  background(0);
  Ball newBall = new Ball();  
  newBall.move();
}

void mouseClicked() {
}