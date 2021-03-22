class Rock {
  // member variables
  int x, y, dia, health, speed, rad;
  char displayMode;
  color c;

  // constructor
  Rock(int x, int y ) {
    this.x = x;
    this.y = y;
    dia = 50;
    speed = int(random(1, 8));
    displayMode = '1';
    health = 50;
    rad = 25;
    c = 225; //change
  }

  //collision for rocks and lasers
  boolean laserIntersection(Laser laser) {
    float distance = dist(x, y, laser.x, laser.y);
    if (distance < rad + laser.rad) {
      return true;
    } else {
      return false;
    }
  }

  boolean reachedBottom() {
    if (y>height) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    y+=speed;
  }

  // member methods
  void display() {
    fill(c);
    noStroke();
    ellipse(x, y, 20, 20);
  }
}
