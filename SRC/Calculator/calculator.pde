Button[] numButtons = new Button[10];
Button[] opButtons = new Button[14];
String dVal = "0.0";

void setup() {
  size(360, 520);
  numButtons[0] = new Button(63, 220, 50, 30, "0", true);
  numButtons[1] = new Button(35, 185, 50, 30, "1", true);
  numButtons[2] = new Button(90, 185, 50, 30, "2", true);
  numButtons[3] = new Button(145, 185, 50, 30, "3", true);
  opButtons[0] = new Button(0, 100, 50, 50, "C", true);
}

void draw() {
  background(245, 235, 255);
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  } 
  for (int i = 0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
  updateDisplay();
}
void mousePressed() {
  for (int i = 0; i<numButtons.length; i++) {
    if (numButtons[i].hover) {
      dVal += numButtons[i].val;
    }
  }
}

void updateDisplay() {
  fill(255);
  rect(10, 10, width-20, 80);
  fill(3);
  text(dVal, width-40, 65);
}

void performCalculation() {
}
