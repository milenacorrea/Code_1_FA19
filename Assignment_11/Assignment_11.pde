/* 
 
 Assignment 11 - Vectors
 
 Rules:
 
 Use your mouse to make it from the bottom of the sketch to the red box at the top of the sketch!
 Avoid getting hit by the fish or pusheens, or you'll get a game over.
 Fish move left and right at different velocities.
 Pusheens are attracted to your mouse as well.
 */

// replace velocity with vector
// replace position with vector
// add an acceleraiton vector
// add addForce() method as well
// use the add force to make certain objects follow each other.

float gameLose;
color r = color(255, 0, 0);

void setup() {
  size(1000, 1000);
  fishOne = new Fish(new PVector(width/2, height/2), new PVector(-5, 0));
  fishTwo = new Fish(new PVector(width/2, height/3), new PVector(-10, 0));
  fishThree = new Fish(new PVector(width/2, height/6), new PVector(-20, 0));

  pusheenOne = new Pusheen(new PVector(width/2, height/2));
  pusheenTwo = new Pusheen(new PVector(width/2, height/3));
  pusheenThree = new Pusheen(new PVector(width/2, height/6));
}

void draw() {
  background(255);
  fishOne.move();
  fishOne.borderCheck();
  fishOne.display();
  fishOne.update();

  fishTwo.move();
  fishTwo.borderCheck();
  fishTwo.display();
  fishTwo.update();

  fishThree.move();
  fishThree.borderCheck();
  fishThree.display();
  fishThree.update();

  pusheenOne.borderCheck();
  pusheenOne.display();
  pusheenOne.update();

  pusheenTwo.borderCheck();
  pusheenTwo.display();
  pusheenTwo.update();

  pusheenThree.borderCheck();
  pusheenThree.display();
  pusheenThree.update();

  if (dist(mousePosition.x, mousePosition.y, fishOne.location.x, fishOne.location.y) <= 50
    || dist(mousePosition.x, mousePosition.y, fishTwo.location.x, fishTwo.location.y) <= 50  
    || dist(mousePosition.x, mousePosition.y, fishThree.location.x, fishThree.location.y) <= 50) {
    gameLose++;
  }

  if (dist(mousePosition.x, mousePosition.y, pusheenOne.location.x, pusheenOne.location.y) <= 100
    || dist(mousePosition.x, mousePosition.y, pusheenTwo.location.x, pusheenTwo.location.y) <= 100  
    || dist(mousePosition.x, mousePosition.y, pusheenThree.location.x, pusheenThree.location.y) <= 100) {
    gameLose++;
  }

  fill(255, 0, 0);
  rect(250, 75, 500, 75);

  if (gameLose >= 1) {
    background (0);
    textSize(40);
    text("Game Over!", 400, height/2);
  }

  if (get(mouseX, mouseY) == r) {
    background (0);
    textSize(40);
    text("You Win :D !", 400, height/2);
  }
}
