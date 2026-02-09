public void setup() {
  size(800, 800);
}
public void draw() {
  myFractal(400, 400, 300);
}
public void myFractal(int x, int y, int size) {
fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  circle(x, y, size);
  if (size > 50) {
    myFractal(x, y, size-size/5);
    myFractal(x+size, y+size, size-size/5);
    myFractal(x+size, y-size, size-size/5);
  }
}

