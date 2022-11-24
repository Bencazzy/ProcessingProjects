float noise;

float x, y, r;

void setup() {
  size(1000, 1000);
  x = 0;
  y = 0;
  r = 50;
  noStroke();
  background(220);
  frameRate(100);
}

void draw() {
  if (x < width) {
    noise = random(0, 1);
    if (noise < 0.5) {
      fill(1);
      rect(x, y, r, r);
    } else {
      fill(255);
      rect(x, y, r, r);
    }
    if (y < height) {
      y += r;
    } else {
      y = 0;
      x += r;
    }
  } else {
    if (keyPressed) {
      if (key == 'r') {
        background(220);
        x = 0;
        y = 0;
        r = 50;
      }
    }
  }
}
