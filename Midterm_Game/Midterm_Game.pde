/*

milena correa || code 1 || midterm!
a maze in which you need to collect all the flowers to exit!

Looked at some documentation and forum posts for help on some concepts, did not use any external code however

References: 
https://processing.org/tutorials/pixels/
https://processing.org/reference/ellipseMode_.html
https://processing.org/reference/get_.html
https://forum.processing.org/two/discussion/18333/check-color-of-pixel-and-around-it
https://forum.processing.org/two/discussion/9355/what-s-the-difference-between-int-negative-color-values-and-float-negative-color-values
https://forum.processing.org/two/discussion/11590/how-to-make-your-program-reset

*/


int keyPresses;
int endLock;
boolean endgame;
float endTrigger;

PImage startGame;
PImage endGame;

void setup() {
  size(600, 400);
  pixelDensity(2);
  startGame = loadImage("instructions.png");
  endGame =loadImage("endgame.png");

  flowerOne = new Flower(50, 38);
  flowerTwo = new Flower(400, 38);
  flowerThree = new Flower(275, 365);
  flowerFour = new Flower(280, 265);

  m = new MazeBorders();
  p = new Player(20, 190);
}

void draw() {
  background(255);
  m.display();
  m.update();
  p.display();
  p.update();

  // displaying the flowers only if they haven't been touched

  if (flowerOne.touchedOne < 1) {
    flowerOne.display();
  }

  if (flowerTwo.touchedTwo < 1) {
    flowerTwo.display();
  }
  if (flowerThree.touchedThree < 1) {
    flowerThree.display();
  }
  if (flowerFour.touchedFour < 1) {
    flowerFour.display();
  }

  flowerOne.update();
  flowerTwo.update();
  flowerThree.update();
  flowerFour.update();

  // below is my horrendous attempt at scene management
  // i was looking online at some examples but didn't really understand them so i tried to do it with what i knew
  // it does work! it just looks bad lol

  endTrigger = dist(float(p.xpos), float(p.ypos), 590, 185);

  if (flowerOne.touchedOne >= 1 && flowerTwo.touchedTwo >= 1 && flowerThree.touchedThree >= 1 && flowerFour.touchedFour >= 1) {
    endgame = true;
  }

  if (endgame == true && endTrigger <= 6) {
    image(endGame, 0, 0);
    if (keyPressed == true) {
      if (key == 'r') {
        reset();
        image(startGame, 0, 0);
      }
    }
  }  

  if (keyPresses < 1) {
    image(startGame, 0, 0);
  }
  if (keyPressed == true) {
    keyPresses = 1;
  }
}

//resetting all global variables, called when R is pressed at endgame screen
void reset() {
  keyPresses = 0;
  flowerOne.touchedOne = 0;
  flowerTwo.touchedTwo = 0;
  flowerThree.touchedThree = 0;
  flowerFour.touchedFour = 0;
  endgame = false;
  keyPressed = false;
  p.xpos = 20;
  p.ypos = 190;
}
