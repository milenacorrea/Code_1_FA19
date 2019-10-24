// milena correa
// code 1
// assignment 5.1


//used an example from david schiffmans processing book to get the animation timing (p177)
// didnt use it in the end since it affected other code, but keeping here as process/future reference

//int savedTime;
//int totalTime = 1000;

int speed = 0;
float color1 = random(0, 255);
float angle = 1;
float b = 0;
float g = 0;
float total = 0;

void setup() {
  size(1000, 1000);
  noStroke();
}

void draw() {

  //draw lines in background
  for (float x2  = 0; x2 < width; x2++) {
    stroke(map(x2, 0, 1000, color1, random(0, 255)), b, g);
    line(x2, 0, x2, height);
    //stroke(map(mouseX, 0, 1500, 0, 255), map(mouseY, 0, 1500, 0, 255), 125, 10);

    keyPressed();
    {
      if (key == CODED) {
        if (keyCode == RIGHT) {
          b = 125;
        } else if
          (keyCode == LEFT) {
          g = 125;
        }
      }
    }
  }


  // int passedTime = millis() - savedTime; 
  // if (passedTime > totalTime) {

  // draw petals around the screen
  push();
  for (float x = 0; x < width; x = x + 80) {
    for (float y = 0; y < height; y = y + 80) {
      fill(random(99, 255), random(100, 255), random(0, 255));
      speed++;
      rotate(sin(10) * speed);
      ellipse(x, y, 80, 200);

      //savedTime = millis();
    }
  }
  pop();

  // draw triangles
  push();
  for (float x3 = 0; x3 < width; x3 = x3 + 200) {
    for (float y3 = 0; y3 < height; y3 = y3 + 200) {
      rotate(sin(angle));

      fill(dist(0, 0, map(mouseX, 0, 1000, 0, 255)
      , map(mouseY, 0, 1000, 0, 255
        )), 200);

      triangle(mouseX, 300, mouseY, 200, x3, y3);

      keyPressed();
      {
        if (key == CODED) {
          if (keyCode == UP) 
          {
            angle++;
          } else if (keyCode == DOWN)
          {
            angle--;
          }
        }
      }
      println(angle);
    }
  }

  pop();
}
