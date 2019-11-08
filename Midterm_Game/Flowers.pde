Flower flowerOne;
Flower flowerTwo;
Flower flowerThree;
Flower flowerFour;

class Flower {

  int xpos;
  int ypos;

  float a;
  float b;
  float c;
  float d;

  int touchedOne;
  int touchedTwo;
  int touchedThree;
  int touchedFour;
  int flowerCount;

  PImage flowerSprite;

  Flower(int _xpos, int _ypos) {

    xpos = _xpos;
    ypos = _ypos;
    flowerSprite = loadImage("flower.png");
  }

  void display() {

    push();
    imageMode(CENTER);
    image(flowerSprite, xpos, ypos);
    pop();
  }

  void update() {

    /* Checking the distance between the player and the flower. If the distance is
     less than or equal to 5, then the flower will be considered "touched"
     and will no longer be displayed on the main setup
     */
    a = dist(float(p.xpos), float(p.ypos), float(flowerOne.xpos), float(flowerOne.ypos));
    b = dist(float(p.xpos), float(p.ypos), float(flowerTwo.xpos), float(flowerTwo.ypos));
    c = dist(float(p.xpos), float(p.ypos), float(flowerThree.xpos), float(flowerThree.ypos));
    d = dist(float(p.xpos), float(p.ypos), float(flowerFour.xpos), float(flowerFour.ypos));

    if (a <= 5) {
      touchedOne = 1;
      collectflower.play();
    }

    if (b <= 5) {
      touchedTwo = 1;
      collectflower.play();
    }

    if (c <= 5) {
      touchedThree = 1;
      collectflower.play();
    }

    if (d <= 5) {
      touchedFour = 1;
      collectflower.play();
    }
  }
}
