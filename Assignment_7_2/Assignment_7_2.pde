// milena correa
// code 1
// assignment 7.2

// creating an class to represent a particle system
// and an arraylist to hold them

// I tried to recreate fire and smoke

ArrayList<System> systems = new ArrayList<System>();

void setup() {
  size(1000, 600);
}

void draw() {
  background(255);
  for (int i = 0; i < systems.size(); i++) {
    System temp = systems.get(i);
    temp.update();
  }

  for (int i = 0; i < systems.size(); i++) {
    System temp = systems.get(i);
    if (temp.num > 500) {
      systems.remove(i);
    }
  }
}

void mousePressed() {
  systems.add(new System(mouseX, mouseY));

  fill(255, 0, 0);
  systems.add(new System(mouseX, mouseY));
}

class System {
  ArrayList<Particle> b = new ArrayList<Particle>();
  float x;
  float y;
  int num;
  int particleLife = 50;

  ArrayList<Particle> c = new ArrayList<Particle>();
  float xc;
  float yc;
  int numc;
  int particleLifec = 35;

  System(float _x, float _y) {
    x = _x;
    y = _y;
    num = 0;

    xc = _x;
    yc = _y;
    numc = 0;
  }

  void update() {
    if (num <= 250) {
      b.add(new Particle(x, y, particleLife));
      fill(0, 50);
      if (num <= 200) {
        fill(0, 100);
      }
      if (num <= 150) {
        fill(0, 150);
      }
      if (num <= 100) {
        fill(0, 200);
      }
      if (num <= 50) {
        fill(0, 230);
      }
    }
    num++;

    for (int i = b.size() - 1; i >= 0; i--) {
      Particle temp = b.get(i);
      temp.update();
      temp.display();
      if (temp.life < 2) {
        b.remove(i);
      }
    }

    if (numc <= 250) {
      c.add(new Particle(xc, yc, particleLifec));
      fill(255, 0, 0, 50);
      if (numc <= 200) {
        fill(255, 50, 0, 100);
      }
      if (numc <= 150) {
        fill(255, 100, 0, 150);
      }
      if (numc <= 100) {
        fill(255, 150, 0, 200);
      }
      if (numc <= 50) {
        fill(255, 200, 0, 230);
      }
    }
    numc++;

    for (int i = c.size() - 1; i >= 0; i--) {
      Particle temp = c.get(i);
      temp.update();
      temp.display();
      if (temp.life < 2) {
        c.remove(i);
      }
    }
  }
}

class Particle {
  float x;
  float y;
  float dx;
  float dy;
  float life;
  float r;

  Particle(float _x, float _y, float _life) {
    x = _x;
    y = _y;
    dx = random(-5, 5);
    dy = random(-20);
    life = _life ;
    r = 40;
  }

  void update() {
    life-=2;

    if (life < 2) {
      fill(255, 100);
    }

    if (x > width - r || x < r) {
      dx *= -1;
    }
    if (y > height - r || y < r) {
      dy *= -1;
    }

    x += dx;
    y += dy;
  }

  void display() {
    float r = map(life, 100, 0, 40, 0);
    rect(x, y, r * 4, r * 4);
  }
}
