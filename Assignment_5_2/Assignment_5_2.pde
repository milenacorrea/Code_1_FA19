// milena correa
// code 1
// assignment 5.2

float startAngle = 0;
float angleVel = 0.1;

void setup() {
  size(1250, 1250);
}

// help from david schiffmans processing book and videos
// draws out a sin wave
void squiggles() {
  startAngle += .02;
  float angle = startAngle;

  for (float x = 0; x <=1250; x += 24) {
    float y = map(sin(angle), -1, 1, 0, 1250);
    stroke(0);
    fill(0, 50);
    ellipse(x, y, 48, 48);
    angle += angleVel;
  }
}


void draw() {
  
  background(125, map(mouseX, 0, 1250, 0, 255), map(mouseY,0,1250,0,255));

// draw squiggly lines around sketch
  push();
  rotate(-QUARTER_PI);
  translate(100, 400);
  scale(0.1);
  squiggles();
  pop();

  push();
  translate(1000, 850);
  rotate(QUARTER_PI);
  scale(0.1);
  squiggles();
  pop();

  push();
  translate(800, 200);
  scale(0.1);
  squiggles();
  pop();

  push();
  translate(width/2, height/2);
  scale(0.1);
  squiggles();
  pop();

  push();
  translate(150, 1000);
  rotate(-QUARTER_PI);
  scale(0.1);
  squiggles();
  pop();

  push();
  rotate(QUARTER_PI);
  translate(600, 200);
  scale(0.1);
  squiggles();
  pop();


//draw rows of circles
  push();
  translate(100, 100);
  for (float x = 0; x < width; x = x + 150) {
    for (float y = 0; y < height; y = y + 150) {
      fill(random(0, 255), random(0, 255), random(0, 255));
      ellipse(x, y, 10, 10);
      fill(0);
      rect(x + 50, y, 20, 10);
    }
  }
  pop();

//draw rows of lines
  for (float x = 0; x < width; x = x + 50) {
    for (float y = 0; y < height; y = y + 50) {
      line(x+50, y+50, x+50, y+40);
    }
  }
}
