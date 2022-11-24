float x1;
float y1;

float x2;
float y2;

boolean isOn = false;

void setup() {
  size(900, 900);
  strokeWeight(2);
  fill(0, 120, 215, 80);
  stroke(0, 120, 250);
}

void draw() {
  background(220);

  if (!isOn) {
    x1 = mouseX;
    y1 = mouseY;
    x2 = x1;
    y2 = y1;
  } else {
    x2 = mouseX;
    y2 = mouseY;
  }

  if (mousePressed) {
    rect(x1, y1, x2 - x1, y2 - y1);
    isOn = true;
  } else if (!mousePressed) {
    isOn = false;
  }
}
