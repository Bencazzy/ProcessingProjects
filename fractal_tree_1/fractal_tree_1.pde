void setup() {
  size(500, 500);
}

void draw() {
  background(50);
  stroke(255);
  translate(250, height);
  tree(200, 10);
}

void tree(float len, float count) {
  if (count > 0) {
    count--;
    line(0, 0, 0, -len);
    translate(0, -len);
    push();
    rotate(PI / 4);
    tree(len / 2, count);
    pop();
    rotate(-(PI / 4));
    tree(len / 2, count);
  }
}
