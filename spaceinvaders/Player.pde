class Player {
  float x, y;
  Player(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(0, 200, 255);
    rect(x - 20, y - 10, 40, 20);
  }

  void move() {
    if (keyPressed) {
      if (key == 'a') x -= 4;
      if (key == 'd') x += 4;
    }
  }
}
