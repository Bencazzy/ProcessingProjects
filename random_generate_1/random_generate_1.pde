float x;
float y;
float x2;
float y2;

float dist;

float generate;

void setup() {
  size(1000, 1000);
  background(1);
  dist = 10;
  x = 0;
  y = 0;
  x2 = dist;
  y2 = dist;
}

void draw() {
  stroke(random(255), random(255), random(255));
  strokeWeight(random(10));
  if (y2 <= height) {
    generate = random(0, 1);
    if (generate < 0.5) {
      line(x, y, x2, y2);
    } else {
      line(x + dist, y, x2 - dist, y2);
    }
    if (x2 < width) {
      x += dist;
      x2 += dist;
    } else {
      x = 0;
      x2 = dist;
      y += dist;
      y2 += dist;
    }
  } else {
    if (keyPressed) {
      if (key == 'r') {
        background(1);
        x = 0;
        y = 0;
        x2 = dist;
        y2 = dist;
      }
      if (key == 's') {
        saveFrame("img####.png"); 
      }
    }
  }
}
