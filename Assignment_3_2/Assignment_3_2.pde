// milena correa

// code 1 - fall 2019

// assignment 3, part 2 - functions

//my idea for this one was to get the blood drops to change different colors
//individually when pressed... clearly this did not work out at all as
//i can't even get it to register a button click vs. mouse click.

boolean buttonOn = true;
boolean buttonOn2 = true;
boolean buttonOn3 = true;
boolean buttonOn4 = true;
boolean buttonOn5 = true;
boolean buttonOn6 = true;





int bloodColor1 = color(255, 0, 0);
int bloodColor2 = color(255, 0, 0);
int bloodColor3 = color(255, 0, 0);
int bloodColor4 = color(255, 0, 0);
int bloodColor5 = color(255, 0, 0);
int bloodColor6 = color(255, 0, 0);

void setup() {
  size(1000, 1000);
  background(20);
}

void draw() { 
  if (buttonOn) {
    bloodColor1 = color(255, 0, 0);
  } else {
    bloodColor1 = color(random(0, 255), random(0, 255), 0);
  }

  if (buttonOn2) {
    bloodColor2 = color(255, 0, 0);
  } else {
    bloodColor2 = color(random(0, 255), random(0, 255), 0);
  }

  if (buttonOn3) {
    bloodColor3 = color(255, 0, 0);
  } else {
    bloodColor3 = color(random(0, 255), random(0, 255), 0);
  }

  if (buttonOn4) {
    bloodColor4 = color(255, 0, 0);
  } else {
    bloodColor4 = color(random(0, 255), random(0, 255), 0);
  }

  if (buttonOn5) {
    bloodColor5 = color(255, 0, 0);
  } else {
    bloodColor5 = color(random(0, 255), random(0, 255), 0);
  }

  if (buttonOn6) {
    bloodColor6 = color(255, 0, 0);
  } else {
    bloodColor6 = color(random(0, 255), random(0, 255), 0);
  }

  drawKnife(0, 0);
}

//modified sample button code
void mousePressed() {
  float a = dist(500, 500, mouseX, mouseY);
  if (a < 50 ) {
    buttonOn = !buttonOn;
  }
  float b = dist(600, 400, mouseX, mouseY);
  if (b < 50 ) {
    buttonOn2 = !buttonOn2;
  }
  float c = dist(300, 400, mouseX, mouseY);
  if (c < 50 ) {
    buttonOn3 = !buttonOn3;
  }
  float d = dist(200, 500, mouseX, mouseY);
  if (d < 50 ) {
    buttonOn4 = !buttonOn4;
  }
  float e = dist(800, 700, mouseX, mouseY);
  if (e < 50 ) {
    buttonOn5 = !buttonOn5;
  }
  float f = dist(350, 200, mouseX, mouseY);
  if (f < 50 ) {
    buttonOn6 = !buttonOn6;
  }
}


void drawBlood(float x, float y) {

  fill(bloodColor1);
  bloodShape(x + 500, y+500, 20);

  fill(bloodColor2);
  bloodShape(x + 600, y+400, 20);

  fill(bloodColor3);
  bloodShape(x+300, y+400, 20);

  fill(bloodColor4);
  bloodShape(x+200, y+500, 20);

  fill(bloodColor5);
  bloodShape(x+800, y+700, 20);

  fill(bloodColor6);
  bloodShape(x+350, y+200, 20);
}

//drawing a raindrop shape code from: https://gist.github.com/clavis-magna/42fe43e5f7ef0291596b\
void bloodShape(float x, float y, float size) {
  noStroke();
  for (float i = 2; i < size; i++ ) 
  {
    ellipse(x, y + i*4, i*2, i*2);
  }
}


void drawKnife(float x, float y) {
  drawHandle(x, y);
  drawBlade(x, y);
  drawBlood(x, y);
}

void drawHandle(float x, float y) {
  fill(255);
  rect(x+500, y+600, 50, 200);
}

void drawBlade(float x, float y) {
  fill(150);
  triangle(x+500, y+600, x+650, y+600, x+500, y+100);
}
