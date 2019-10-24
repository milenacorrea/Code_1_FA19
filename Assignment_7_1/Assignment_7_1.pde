// milena correa
// code 1
// assignment 7.1 - redoing assignment 3.1 but with classes!!!

// goal: to make flowers appear when the player clicks the screen
// for the flowers to vary in size and colors

// https://forum.processing.org/one/topic/create-new-object-with-mouse-click.html
// used this as a reference

ArrayList<Flower> flowers;
int flowerAmount = 50;
Flower f;

void setup() {
  size(1000, 1000);
  flowers = new ArrayList<Flower>();
  flowers.add(new Flower(mouseX, mouseY, random(0,255), random(1)));
  mousePressed();
}

void draw() {
  background(188, 229, 255);

for(int i = flowers.size()-1; i>=0; i--){
  Flower f = flowers.get(i);
  f.display();
  f.update();
}
}

void mousePressed() {
  flowers.add(new Flower(mouseX, mouseY, random(0,255), random(1)));
}

class Flower {
  float xpos;
  float ypos;
  float petalColor;
  float flowerSize;

  Flower(float x, float y, float _petalColor, float _flowerSize) {
    xpos = x;
    ypos = y;
    petalColor = _petalColor;
    flowerSize = _flowerSize;
    
  }

  void drawFlowerCenter(float x, float y) {
    fill(255, 255, 0);
    ellipse(500,580, 50, 50);
  }

  void drawPetals( float x, float y, float petalColor) {
    fill(petalColor);
    ellipse(500, 500, 80, 80);
    ellipse(500, 660, 80, 80);
    ellipse(430, 620, 80, 80);
    ellipse(430, 540, 80, 80);
    ellipse(570, 620, 80, 80);
    ellipse(570, 540, 80, 80);
  }

  void finalFlower(float x, float y, float petalColor, float flowerSize) {
    scale(flowerSize);
    drawFlowerCenter(x, y);
    drawPetals(x, y, petalColor);
  }

  void display() {
    finalFlower(xpos, ypos, petalColor, flowerSize);
  }

  void update() {
  }
}
