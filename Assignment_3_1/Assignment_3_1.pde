// milena correa

// code 1 - fall 2019

// assignment 3, part 1 - functions

void setup()
{
  size(1800, 1800);
  frameRate(10);
  //I know you said not to use this but is there another way of doing this?
  //I was wondering if it could be done through PS Graphics?
}

void draw()
{
  background(188,229,255);
  flower(random(800),random(800));
  flower(random(300),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  flower(random(800),random(800));
  loop();
  
}

void flower (float x, float y)
{
  drawPetals(x, y, color(random(3,255), random(0,255), random(50,255)));
  drawFlowerCenter(x, y);
}

void drawPetals (float x, float y, int petalColor)
{
  fill(petalColor);
  ellipse(x + 500, y + 500, 80, 80);
  ellipse(x + 500, y + 660, 80, 80);
  ellipse(x + 430, y + 620, 80, 80);
  ellipse(x + 430, y + 540, 80, 80);
  ellipse(x + 570, y + 620, 80, 80);
  ellipse(x + 570, y + 540, 80, 80);
}

void drawFlowerCenter(float x, float y)
{
  fill(255,255,0);
  ellipse(x + 500, y + 580, 50, 50);
}


// was interested in seeing if I could rotate these raindrops to become petals,
// but unfortunately it didn't work because the raindrops are comprised of 3 ellipses,
// and i couldn't figure out the math to rotate them along
// keeping it in here to ask future questions/ solve in the future

//drawing a raindrop shape code from: https://gist.github.com/clavis-magna/42fe43e5f7ef0291596b
//slightly modified by adding Z float, changed variables from integers to floats

//draw raindrop x = x position, y = y positiom, size = size
//void drawRaindrop(float x,float y, float z, float size){
//    noStroke();
//    for (float i = 2; i < size; i++ ) 
//    {
//      ellipse(x,y + i*4,i*2,i*2);
//      rotate(z);
//    }
