// milena correa
// code 1
//

//RULES: click all of the green balls to win! avoid the squares! if you accidently click all of the squares, you lose!

// variable list for each ball and rectangle

//position
float b1x;
float b1y;
float b2x;
float b2y;
float b3x;
float b3y;

float r1x;
float r1y;
float r2x;
float r2y;
float r3x;
float r3y;

//speed
float b1xSpeed;
float b2xSpeed;
float b3xSpeed;
float r1xSpeed;
float r2xSpeed;
float r3xSpeed;

float b1ySpeed;
float b2ySpeed;
float b3ySpeed;
float r1ySpeed;
float r2ySpeed;
float r3ySpeed;

//counts total ball and rectangle clicks
int numClicked;
int numClickedY;

//counts if the item has been clicked
boolean clickedb1;
boolean clickedb2;
boolean clickedb3;
boolean clickedr1;
boolean clickedr2;
boolean clickedr3;

void setup() {
  size(800, 800);
  background(255);
  
  //defining sizes
  b1x = width/2;
  b2x = width/2;
  b3x = width/2;

  b1y = height/2;
  b2y = height/2;
  b3y = height/2;

  r1x= width/2;
  r2x= width/2;
  r3x= width/2;

  r1y = height/2;
  r2y = height/2;
  r3y = height/2;

  b1xSpeed = 5;
  b2xSpeed = 4;
  b3xSpeed = 3;
  r1xSpeed = 4;
  r2xSpeed = 1;
  r3xSpeed = 5;

  b1ySpeed = 2;
  b2ySpeed = 3;
  b3ySpeed = 1;
  r1ySpeed = 1.5;
  r2ySpeed = 4;
  r3ySpeed = 3;
}

void draw() {
  background(255);
  drawShapes(0, 0);

//speed and bounciness
  if (b1x > width -25 || b1x < 25) {
    b1xSpeed *= -1;
  }
  if (b1y > height - 25 || b1y<25) {
    b1ySpeed *= -1;
  }

  if (b2x > width -25 || b2x < 25) {
    b2xSpeed *= -1;
  }

  if (b2y > height - 25 || b2y<25) {
    b2ySpeed *= -1;
  }

  if (b3x > width -25 || b3x < 25) {
    b3xSpeed *= -1;
  }

  if (b3y > height - 25 || b3y<25) {
    b3ySpeed *= -1;
  }

  if (r1x > width -25 || r1x < 25) {
    r1xSpeed *= -1;
  }

  if (r1y > height - 25 || r1y < 25 ) {
    r1ySpeed *= -1;
  }

  if (r2x > width -25 || r2x < 25) {
    r2xSpeed *= -1;
  }

  if (r2y > height - 25 || r2y<25) {
    r2ySpeed *= -1;
  }

  if (r3x > width -25 || r3x < 25) {
    r3xSpeed *= -1;
  }

  if (r3y > height -25 || r3y<25) {
    r3ySpeed *= -1;
  }


  b1x += b1xSpeed;
  b1y += b1ySpeed;
  b2x += b2xSpeed;
  b2y += b2ySpeed;
  b3x += b3xSpeed;
  b3y += b3ySpeed;

  r1x += r1xSpeed;
  r1y += r1ySpeed;
  r2x += r2xSpeed;
  r2y += r2ySpeed;
  r3x += r3xSpeed;
  r3y += r3ySpeed;

//winning and losing text based on number of clicks
  if (numClicked == 3) {
    background(0);
    fill(255);
    textSize(50);
    text("You Lose!", width/2, height/2);
  }
  
   if (numClickedY == 3) {
    background(255, 255, 0);
    fill(0);
    textSize(50);
    text("You Win :) !", width/2, height/2);
  }
}

void drawShapes(float x, float y) {
  //draws all of the balls and rectangles, says that if they are clicked to turn either green or red

  if (clickedb1 == true) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  ellipse(b1x, b1y, 50, 50);

  if (clickedb2 == true) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  ellipse(b2x, b2y, 50, 50);

  if (clickedb3 == true) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  ellipse(b3x, b3y, 50, 50);

  if (clickedr1 == true) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  rect(r1x, r1y, 50, 50);

  if (clickedr2 == true) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  rect(r2x, r2y, 50, 50);

  if (clickedr3 == true) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  rect(r3x, r3y, 50, 50);
}

void mousePressed() {
  //defines distance of clicks to the ball/rectangle, if they are close enough it will make the statement true
  //also adds to the ball and rectangle counter
  if (dist(mouseX, mouseY, b1x, b1y) < 50) {
    clickedb1 = true;
    numClickedY++;
  }

  if (dist(mouseX, mouseY, b2x, b2y) < 50) {
    clickedb2 = true;
    numClickedY++;
  }

  if (dist(mouseX, mouseY, b3x, b3y) < 50) {
    clickedb3 = true;
    numClickedY++;
  }

  if (dist(mouseX, mouseY, r1x, r1y) < 50) {
    clickedr1 = true;
    numClicked++;
    println(numClicked);
  }

  if (dist(mouseX, mouseY, r2x, r2y) < 50) {
    clickedr2 = true;
    numClicked++;
    println(numClicked);
  }

  if (dist(mouseX, mouseY, r3x, r3y) < 50) {
    clickedr3 = true;
    numClicked++;
    println(numClicked);
  }
}
