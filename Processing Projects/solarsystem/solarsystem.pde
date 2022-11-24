float x, y;
float difX, difY;

//int side; // 1 --> topright ;; 2 --> topleft ;; 3 --> bottomleft ;; 4 --> bottomright

void setup() {
  size(500, 500);
  difX = 0;
  difY = 200;

  updateXY();
  x+=5;
}

void draw() {
  background(1);

  fill(255, 255, 0);
  circle(width / 2, height / 2, 100);

  fill(0, 0, 255);
  circle(x, y, 50);
  if (x <= width / 2 && y <= height / 2) { // 1
    difX--;
    difY++;
  }
  if (x >= width / 2 && y <= height / 2) { // 2
    difX--;
    difY--;
  }
  
  if (x <= width / 2 && y >= height / 2) { // 3
    difX++;
    difY--;
  }
  if (x >= width / 2 && y >= height / 2) { // 4
    difX++;
    difY--;
  }
  
  if (x <= width / 2 && y == height / 2) { // fix
    difX++;
    difY++;
  }
  updateXY();
}

void updateXY() {
  x = width / 2 + difX;
  y = (height / 2) + difY;
}
