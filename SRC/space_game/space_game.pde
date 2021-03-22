// spacegame | Dec 2020
// By Ella Habibija
// TODO: Project setup

SpaceShip s1;
ArrayList<Laser> lasers;
ArrayList<Rock> rocks;
ArrayList<Star> stars;
Timer timer;
int pass, score;
boolean play;

void setup() {
  size(500, 500);
  s1 = new SpaceShip(#7F00E8);
  lasers = new ArrayList();
  rocks = new ArrayList();
  stars = new ArrayList();
  timer = new Timer(int(random(500, 3000)));
  score = 0;
  timer.start();
  pass = 0;
  play = false;
}

void draw() {
  noCursor();
  // gameplay
  if (!play) {
    startScreen();
  } else {
    background(0);

    stars.add(new Star(int(random(width)), int(random(height))));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }

    if (timer.isFinished()) {
      rocks.add(new Rock(int(random(width)), -50));
      timer.start();
    }

    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rock.display();
      rock.move();
      // colision between ship and rock
      if (s1.rockIntersection(rock)) {
        rocks.remove(rock);
        s1.health-=1;
        score+=50;
      }
      if (rock.reachedBottom()) {
        pass++;
        rocks.remove(rock);
      }
    }

    for (int i = 0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      laser.display();
      laser.fire();
      // detect rock collision
      for (int j = 0; j < rocks.size(); j++) {
        Rock rock = rocks.get(j);
        if (rock.laserIntersection(laser))
        {
          lasers.remove(laser);
          rock.health-=laser.power;
          if (rock.health<1) {
            rocks.remove(rock);
            score+=rock.health;
          }
        }
      }
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }

    s1.display(mouseX, mouseY);
    infoPanel();

    // Gameover logic
    if (s1.health<1 || pass>10) {
      play = false;
      gameOver();
    }
  }
}

void mousePressed() {
  lasers.add(new Laser(s1.x, s1.y));
  s1.ammo--;
}

void infoPanel() {
  fill(128, 128);
  rectMode(CORNER);
  rect(0, height-50, width, 50);
  fill(255, 128);
  text("Health:" + s1.health, 20, height-20);
  text("Lives:" + s1.lives, 150, height-20);
  text("Ammo:" + s1.ammo, 220, height-20);
}

void startScreen() {
  background(0);
  textAlign(CENTER);
  text("SPACE GAME", width/2, height/2);
  text("click to continue", width/2, height/2+20);

  if (mousePressed) {
    play = true;
  }
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  fill(222);
  text("Game Over", width/2, height/2);
  text("Final Score " + score, width/2, height/2+20);
  noLoop();
}
