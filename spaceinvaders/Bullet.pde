class Bullet {
  float x, y;

  Bullet(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void update() {
    y -= 5;
  }

  void display() {
    fill(255);
    rect(x - 2, y - 10, 4, 10);
  }

  boolean hits(Enemy e) {
    return e != null &&
      x > e.x - 15 &&
      x < e.x + 15 &&
      y < e.y + 15 &&
      y > e.y - 15;
  }
}
