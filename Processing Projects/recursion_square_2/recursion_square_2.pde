float x, y, a;

int size = 20;

void setup() {
  size(600, 600);
  background(220);
  noFill();
  a = 600;
  x = width / 2 - a / 2;
  y = height / 2 - a / 2;
}

void draw() {
  if (a >= 10) {
    fill(random(255), random(255), random(255));
    rect(x, y, a, a);
    a = a - size;
    x = width / 2 - a / 2;
    y = height / 2 - a / 2;
  } else {
    delay(1000);
    background(220);
    a = 600;
    x = width / 2 - a / 2;
    y = height / 2 - a / 2;
  }
}
