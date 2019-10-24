// milena correa
// code 1
// assignment 4.1

//variables
float angle = 1;
float x = 0;
float y = 1000;

float triangleY2 = 600;
float triangleX2 = 500;

float triangleY3 = 200;
float triangleX3 = 100;

void setup() {
  size(1500, 1500);
}

void draw() {
  
  //colors
  float r1 = map(mouseX, 0, width, 0, 255);
  float b1 = map(mouseX, 0, height, 0, 255);
  float g1 = random(0, 255);

  // to draw the rectangles
  pushMatrix();
  translate(dist(mouseX, mouseY, random(0, 1500), 
    random(0, 1500)), dist(mouseX, mouseY, random(0, 1500), random(0, 1500)));
  rectMode(CENTER);
  rect(0, 0, mouseX, mouseY);
  rotate(HALF_PI);
  popMatrix();

// draw the triangles
  pushMatrix();
  fill(r1, b1, g1);
  translate(x, y);
  rotate(radians(angle));
  angle = angle + 4;
  triangle(mouseX, mouseY, triangleX2, triangleY2, triangleX3, triangleY3);

  x = x + 2;
  y = y - 2;
  popMatrix();

//fun translations and rotations
  pushMatrix();
  triangleY2 = 500;
  triangleX2 = 600;
  triangleY3 = 100;
  triangleX3 = 200;

  pushMatrix();
  translate(100, 100);

  pushMatrix();
  rotate(radians(angle));
  angle = angle - QUARTER_PI;

  popMatrix();
  popMatrix();
  popMatrix();
}
