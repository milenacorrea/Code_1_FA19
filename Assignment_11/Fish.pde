Fish fishOne;
Fish fishTwo;
Fish fishThree;

class Fish {
  PVector location;
  PVector velocity;

  PImage fishSprite;

  Fish(PVector _location, PVector _velocity) {
    location = _location;
    velocity = _velocity;
    fishSprite = loadImage("fish.png");
  }

  void move() {
    location.add(velocity);
  }

  void borderCheck() {
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
  }
  void display() {
    image(fishSprite, location.x, location.y);
  }
  void update() {
    
  }
}
