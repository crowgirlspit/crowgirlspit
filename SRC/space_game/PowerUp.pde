class PowerUp {
  // member variables
  int x, y, dia;
  char displayMode;
  color c;

  // constructor
  PowerUp() {
    x=0;
    y=0;
    dia = 0;
    displayMode = '1';
    c = 225; //change
  }
  // member methods
  void display() {
    fill(c);
    noStroke();
    ellipse(x, y, dia, dia);
  }
}
