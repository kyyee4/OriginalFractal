public void setup() {
  size(800, 800);
}
public void draw() {
  myFractal(400, 400, 300, PI/180);
}
public void myFractal(int x, int y, int size, float angle) {
  fill((int)Math.random()*255,(int)Math.random()*255,(int)Math.random()*255);
  if (size > 20) {
    myFractal((int)(x * angle), y, size-size/5, angle);
    myFractal(x+size, y+size, size-size/5, angle);
    myFractal(x+size, y-size, size-size/5, angle);
  }
}
