Pusheen pusheenOne;
Pusheen pusheenTwo;
Pusheen pusheenThree;

PVector mousePosition;

class Pusheen {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed;

  PImage pusheenSprite;

  Pusheen(PVector _location) {
    location = _location;
    velocity = new PVector (0,0);
    topSpeed = 10;

    pusheenSprite = loadImage("pusheen.png");
  }
  void borderCheck() {
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
  }
  void display() {
    image(pusheenSprite, location.x, location.y);
  }
  void update() {
    mousePosition = new PVector(mouseX, mouseY);
    PVector acceleration = PVector.sub(mousePosition, location);
    acceleration.setMag(random(0.02, 0.5));
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);
  }
}
