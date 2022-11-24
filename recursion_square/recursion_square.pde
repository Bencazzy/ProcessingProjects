float f;
float wh;

float x;
float y;

void setup() {
  size(600, 600);
  noFill();
  wh = 500;

  f = 20;

  x = width / 2 - wh / 2;
  y = height / 2 - wh / 2;
  background(220);
}

void draw() {
  stroke(random(255), random(255), random(255));
  strokeWeight(random(10));
  if (f > 0) {
    x = width / 2 - wh / 2;
    y = height / 2 - wh / 2;
    stroke(random(255), random(255), random(255));
    strokeWeight(random(10));
    rect(x, y, wh, wh);

    wh = wh / 2;
    f = f - 1;
  }

  if (keyPressed) {
    if (key == 'r') {
      background(220);
      f = 20;
      wh = 500;
    }
  }
}
