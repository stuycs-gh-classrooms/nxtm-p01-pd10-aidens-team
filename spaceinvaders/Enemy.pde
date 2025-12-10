class Enemy {
  float x, y;
  float speed = 1;

  Enemy(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(255, 50, 50);
    rect(x - 15, y - 15, 30, 30);
  }

  void move() {
    x += speed;

    if (x > width - 20 || x < 20) {
      speed *= -1;   // bounce
      y += 10;        // move down
    }
  }
}
