class Laser {
  // member variables
  int x, y, speed, rad, power;
  color c;

  // constructor
  Laser(int x, int y) {
    this.x=x;
    this.y=y;
    c = 225; //change
    speed = 6;
    power = int(random(10, 30));
    rad = 4;
    c = #FC00A5;
  }

  // member methods
  void fire() {
    y-=speed;
  }
  boolean reachedTop() {
    if (y<-3) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 3, 6);
  }
}
