float d = 50;
float x = 250;
float y = 250;
float count = 0;
float maxcount = 100;

void setup() {
  size(500, 500);
  background(1);
  stroke(255);
  strokeWeight(3);
}

void draw() {
  if (keyPressed) {
    if (key == 'r') {
      background(1);
      x = 250;
      y = 250;
      count = 0;
    }
  }
  if (count <= maxcount) {
    int val = floor(random(8));
    switch(val) {
    case 0:
      if (x + d <= width && y + d <= height) {
        line(x, y, x + d, y + d);
        x = x + d;
        y = y + d;
      }
      break;
    case 1:
      if (x + d <= width && y - d >= 0) {
        line(x, y, x + d, y - d);
        x = x + d;
        y = y - d;
      }
      break;
    case 2:
      if (x - d >= 0 && y - d >= 0) {
        line(x, y, x - d, y - d);
        x = x - d;
        y = y - d;
      }
      break;
    case 3:
      if (x - d >= 0 && y + d <= height) {
        line(x, y, x - d, y + d);
        x = x - d;
        y = y + d;
      }
      break;
    case 4:
      if (x + d <= width) {
        line(x, y, x + d, y);
        x = x + d;
      }
      break;
    case 5:
      if (y + d <= height) {
        line(x, y, x, y + d);
        y = y + d;
      }
      break;
    case 6:
      if (x - d >= 0) {
        line(x, y, x - d, y);
        x = x - d;
      }
      break;
    case 7:
      if (y - d >= 0) {
        line(x, y, x, y - d);
        y = y - d;
      }
      break;
    }
    count++;
  }
}
