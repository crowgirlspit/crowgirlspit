void setup () {
  size(400, 400);
}

void draw() {
  background(223, 188, 255);
  fill(255, 255, 255);
  stroke(255);
  strokeWeight(2);
  beginShape();
  vertex(0, -50);
  vertex(14, -20);
  vertex(47, -15);
  vertex(23, 7);
  vertex(29, 40);
  vertex(0, 25);
  vertex(-29, 40);
  vertex(-23, 7);
  vertex(-47, -15);
  vertex(-14, -20);
  endShape(CENTER);
  //horizontal rendering
  line(0, 100, width, 100);
  for (int i=0; i<width; i+=20) {
    line(i, 96, i, 104);
    textSize(8);
    textAlign(CENTER);
    fill(173, 80, 255);
    text(i, i, 94);
  }
  ellipse(mouseX, 100, 5, 5);
  text("Cel:" + convertToCel(mouseX), mouseX, 115);

  println("20 degrees conveted to Cel:" + convertToCel(20));
  println("20 degrees conveted to Far:" + convertToFar(20));
  //text("Far:" + convertToCel(20.0));
}

float convertToCel(float val) {
  val = (val-32)*(5.0/9.0);
  return val;
}

float convertToFar(float val) {
  val = val*(9.0/5.0)+32;
  return val;
}
