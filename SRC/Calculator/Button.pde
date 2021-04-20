class Button {
  // Member Variables
  int x, y, w, h;
  String val;
  color c1, c2;
  boolean hover, isNumber;

  // Constructor
  Button (int tempX, int tempY, int tempW, int tempH, String tempVal, boolean isNumber) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    val = tempVal;
    c1 = #6700F0;
    c2 = #D0ADFF;
    hover = false;
    this.isNumber = isNumber;
  }

  // Method For Display
  void display() {
    if (isNumber == true) {
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
      rect(x, y, w, h, 8);
      fill(0);
      text(val, x+w/2, y+h/2);
    } else {// format a non-number button
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
      rect(x, y, w, h, 8);
      fill(0);
      text(val, x+w/2, y+h/2);
    }
  }



  // Method For Mouse Interaction
  void hover() {
    hover = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  }
}
