void setup() {
  size(400, 100);
}

void draw() {
  background(127);
  line(0, 50, width, 50);
  ellipse(mouseX, 50, 5, 5);
  assignGrade(mouseX);
}

void assignGrade(float grade) {
  grade = grade*0.01;
  if (grade >= 3.51) {
    text("Assign Letter Grade A; " + grade, mouseX, 40);
  } else if (grade >= 3.00) {
    text("Assign Letter Grade A-; " + grade, mouseX, 40);
  } else if (grade >= 2.84) {
    text("Assign Letter Grade B+; " + grade, mouseX, 40);
  } else if (grade >= 2.67) {
    text("Assign Letter Grade B; " + grade, mouseX, 40);
  } else if (grade >= 2.50) {
    text("Assign Letter Grade B-; " + grade, mouseX, 40);
  } else if (grade >= 2.34) {
    text("Assign Letter Grade C+; " + grade, mouseX, 40);
  } else if (grade >= 2.17) {
    text("Assign Letter Grade C; " + grade, mouseX, 40);
  } else if (grade >= 2.00) {
    text("Assign Letter Grade C-; " + grade, mouseX, 40);
  } else if (grade >= 1.66) {
    text("Assign Letter Grade D+; " + grade, mouseX, 40);
  } else if (grade >= 1.33) {
    text("Assign Letter Grade D; " + grade, mouseX, 40);
  } else if (grade >= 1.00) {
    text("Assign Letter Grade D-; " + grade, mouseX, 40);
  } else {
    text("Assign Letter Grade F; " + grade, mouseX, 40);
  }
}
