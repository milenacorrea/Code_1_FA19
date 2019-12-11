//Assignment 12 (Last one!!!)
//Milena Correa
//Code 1

//Recreating part of my very first assignment (week 2) in 3D!

float leftArmX = 250;
float rightArmX = 750;

void setup() {
  size(1000, 1000, P3D);
}

void draw() {
  background(255);

  //move camera
  camera(mouseX, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);  
  noStroke();
  fill(255, 228, 168);
  lights();

  //head
  push();
  translate(width/2, 200, 0);
  sphere(100);
  pop();

  //neck
  push();
  translate(width/2, 300, 0);
  box(100, 100, 50);
  pop();

  //body
  push();
  fill(0, 0, 255);
  translate(width/2, 525, 0);
  box(300, 350, 150);
  pop();

  rightArm(rightArmX);

  leftArm(leftArmX);
}

void rightArm(float x) {
  push();
  translate(x, 525, 0);
  box(200, 100, 100);
  pop();
}

void leftArm(float x) {
  push();
  translate(x, 525, 0);
  box(200, 100, 100);
  pop();
}

void keyPressed() {
  if (keyCode == LEFT) {
    leftArmX = 200 ;
  } else if (keyCode == RIGHT) {
    rightArmX = 800;
  }
}

void keyReleased() {
  if (keyCode == LEFT) {
    leftArmX = 250;
  } else if (keyCode == RIGHT) {
    rightArmX = 750;
  }
}
