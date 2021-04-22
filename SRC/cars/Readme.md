class Car {
  //member variables
  color c;
  float xpos, ypos, xspeed;

  //constructor
  Car(color c, Float xspeed) {
    this.c = c;
    xpos = random(width);
    ypos = random(height);
    this.xspeed = xspeed;
  }

  //member methods
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    fill(255);
    rect(xpos-6, ypos-5, 5, 3);
    rect(xpos-6, ypos+5, 5, 3);
    rect(xpos+6, ypos-5, 5, 3);
    rect(xpos+6, ypos+5, 5, 3);
  }

  void drive() {
    xpos += xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
