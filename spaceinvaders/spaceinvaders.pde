Player player;
Enemy[] enemies;
ArrayList<Bullet> bullets;

void setup() {
  size(600, 600);
  player = new Player(300, 550);

  enemies = new Enemy[5];
  for (int i = 0; i < enemies.length; i++) {
    enemies[i] = new Enemy(100 + i * 80, 100);
  }

  bullets = new ArrayList<Bullet>();
}

void draw() {
  background(0);

  player.display();
  player.move();

  if (keyPressed && key == ' ') {
    bullets.add(new Bullet(player.x, player.y));
  }

  for (int i = bullets.size()-1; i >= 0; i--) {
    Bullet b = bullets.get(i);
    b.update();
    b.display();

    // bullet hits enemies
    for (int j = 0; j < enemies.length; j++) {
      if (enemies[j] != null && b.hits(enemies[j])) {
        enemies[j] = null;    // remove enemy
        bullets.remove(i);    // remove bullet
        break;
      }
    }
  }

  // draw enemies
  for (int i = 0; i < enemies.length; i++) {
    if (enemies[i] != null) {
      enemies[i].display();
      enemies[i].move();
    }
  }
}
