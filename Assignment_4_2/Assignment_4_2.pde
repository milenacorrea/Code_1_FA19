// milena correa
// code 1
// assignment 4.2

//How this works!!!
//Red gear = hours, orange gear = minutes, yellow gear = seconds,
//every time the yellow gear reappears a second has passed

float angle = 0;

void setup() {
  size(1000, 1000);
}

void draw()
{
  pushMatrix();
  translate(500, 500);
  scale(0.4);
  pushMatrix();
  int hour = hour();
  if (hour > 12) {
    hour -= 12;
  }
  
  //hour gear movement
  rotate(map(hour(), 0, 12, 0, TWO_PI));
  translate(-450, 200);
  scale(1.3);
  gear(255, 0, 0);
  popMatrix();

  //minute gear movement
  pushMatrix();
  rotate(map(minute(), 0, 60, 0, TWO_PI));
  gear(255, 125, 0);
  popMatrix();

  //second gear movement
  pushMatrix();
  translate(450, -50);
  scale(.7);
  rotate(map(second(), 0, 60, 0, radians(angle)));
  angle += 1;
  gear(255, 255, 0);
  popMatrix();
  popMatrix();
}

//creation of gear variable
void gear(float r, float g, float b) {
  fill(r, g, b);
  ellipse(width/2, height/2, 300, 300);

  fill(255);
  ellipse(width/2, height/2, 100, 100);

  fill(r, g, b);

  rectMode(CENTER); 
  rect(500, 675, 50, 50);
  rect(500, 325, 50, 50);
  rect(675, 500, 50, 50);
  rect(325, 500, 50, 50);

  rectMode(CORNER);
  pushMatrix();
  translate(400, 400);
  rotate((5*PI)/4);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(600, 400);
  rotate((5*PI)/4);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(400, 600);
  rotate(-(5*PI)/4);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(600, 600);
  rotate((7*PI)/4);
  rect(0, 0, 50, 50);
  popMatrix();
}
