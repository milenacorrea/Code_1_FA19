// milena correa

// code 1 - fall 2019

// assignment 2 - variables

//variables
float headY = 200;
float headX = 500;

float bodyX = 400;
float bodyY = 300;

float lArmX = 200; 
float lArmY = 300;
float rArmX = 600;
float rArmY = 300;

float lLegX = 400;
float lLegY = 600;
float rLegX = 525;
float rLegY = 600;

float eyeSizeX = 50;
float eyeSizeY = 50;
float eyeY = 175;

float smileY = 225;

//storing common colors
int bgColor = color(50,50,200,100);
int skinColor = color(255, 228, 168);
int pantColor = color(0, 0, 150);
int shirtColor = color(230, 0, 0);

void setup() 
{
  size(1000,1000);
}

void draw()
{
  background(bgColor);
  //draw head
  strokeWeight(2);
  fill (skinColor);
  ellipse(headX, headY, 200, 200);
  
  //draw eyes and mouth
  fill(0, 0, 0);
  ellipse(450, eyeY, eyeSizeX, eyeSizeY);
  ellipse(550, eyeY, eyeSizeX, eyeSizeY);
  noFill();
  arc(500, smileY , 100, 60, QUARTER_PI, PI);
  
  //draw body
  fill(shirtColor);
  rect(bodyX, bodyY, 200, 300);
  
  //draw arms
  rect(lArmX, lArmY, 200, 100);
  rect(rArmX, rArmY, 200, 100);
  
  //draw legs
  fill(pantColor);
  rect(lLegX, lLegY, 75, 200);
  rect(rLegX, rLegY, 75, 200);
  
}

//move the body parts if keys are pressed
void keyPressed()
{
  if (keyCode == UP)
  {
    headY = 100;
    smileY = 125;
    eyeY = 75;
  }
  
  else if (keyCode == DOWN)
  {
    lLegY = 700;
    rLegY = 700;
  }
  
  else if (keyCode == RIGHT)
  {
    rArmX = 700;
  }
  
  else if (keyCode == LEFT)
  {
    lArmX = 100;
  }
}
 
//for the body parts to snap back... not sure if there is a quicker way to do this
void keyReleased()
{
  if (keyCode == UP)
  {
    headY = 200;
    smileY = 225;
    eyeY = 175;
  }
  
  else if (keyCode == DOWN)
  {
    lLegY = 600;
    rLegY = 600;
  }
  
  else if (keyCode == RIGHT)
  {
    rArmX = 600;
  }
  
  else if (keyCode == LEFT)
  {
    lArmX = 200;
  }
}

//change all the colors!
void mousePressed()
{
  bgColor = color(random(0,255), random(0,255), random(0,255));
  skinColor = color(random(0,255), random(0,255), random(0,255));
  pantColor = color(random(0,255), random(0,255), random(0,255));
  shirtColor = color(random(0,255), random(0,255), random(0,255));
}
