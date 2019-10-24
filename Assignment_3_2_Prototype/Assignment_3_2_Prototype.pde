// milena correa

// code 1 - fall 2019

// assignment 3, part 2 - functions

//prototype of assignment 3.2, testing usage of buttons... doesn't quite work either

boolean buttonOn = true;

int a = color(255,0,0);
int b = color(255,0,0);
int c = color(255,0,0);
int d = color(255,0,0);
int e = color(255,0,0);

void setup() {
  size(1000, 1000);
}

void draw() {
  if (buttonOn) {
    a = color(255,0,0);
    b = color(255,0,0);
    c = color(255,0,0);
    d = color(255,0,0);
    e = color(255,0,0);
  } else {
    a = color(random(3,255), random(0,255), random(50,255));
    b = color(random(3,255), random(0,255), random(50,255));
    c = color(random(3,255), random(0,255), random(50,255));
    d = color(random(3,255), random(0,255), random(50,255));
    e = color(random(3,255), random(0,255), random(50,255));
  }

  fill(a);
  ellipse(width/2, height/2, 100, 100);
  line(width/2, height/2, mouseX, mouseY);

  fill(b);
  ellipse(width/3, height/3, 100, 100);
  line(width/3, height/3, mouseX, mouseY);

  fill(c);
  ellipse(width/4, height/4, 100, 100);
  line(width/4, height/4, mouseX, mouseY);

  fill(d);
  ellipse(700, 700, 100, 100);
  line(700, 700, mouseX, mouseY);

  fill(e);
  ellipse(500, 800, 100, 100);
  line(500, 800, mouseX, mouseY);
}

void mousePressed() {
  float a = dist(width/2, height/2, mouseX, mouseY);
  if (a < 50) {
    buttonOn = !buttonOn;
  }

  float b = dist(width/3, height/3, mouseX, mouseY);
  if (b < 50) {
    buttonOn = !buttonOn;
  }
  
  float c = dist(width/4, height/4, mouseX, mouseY);
  if (c < 50) {
    buttonOn = !buttonOn;
  }
  
  float d = dist(700, 700, mouseX, mouseY);
  if (d < 50) {
    buttonOn = !buttonOn;
  }
  
  float f = dist(500, 800, mouseX, mouseY);
  if (e < 50) {
    buttonOn = !buttonOn;
  }

}
