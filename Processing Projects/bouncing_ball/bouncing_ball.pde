PVector ball = new PVector(100, 250);
float r = 50;
float vel = 2;

int dirX = 1;
int dirY = 1;

boolean edge = false;

void setup() {
  size(500, 500);
}

void draw() {
  background(1);
  ellipse(ball.x, ball.y, r, r);

  if (ball.x == width) {
    dirX = dirX * -1;
  }
  if (ball.x == 0) {
    dirX = dirX * -1;
  }
  if (dirX == -1) {
    ball.x -= vel;
  }
  if (dirX == 1) {
    ball.x += vel;
  }

  if (ball.y == height) {
    dirY = dirY * -1;
  }
  if (ball.y == 0) {
    dirY = dirY * -1;
  }
  if (dirY == -1) {
    ball.y -= vel;
  }
  if (dirY == 1) {
    ball.y += vel;
  }
}
