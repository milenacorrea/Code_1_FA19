Player p;

class Player {
  int xpos;
  int ypos;
  //initially had a playersprite (still in date) but decided it was simpler to just use an ellipse
  //PImage playerSprite;

  Player(int _xpos, int _ypos) {

    xpos = _xpos;
    ypos = _ypos;

    //playerSprite = loadImage("player.png");
  }

  void display() {
    //image(playerSprite, xpos, ypos);
    push();
    noStroke();
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 15, 15);
    pop();
  }

  /*
 Changing the position of the player according to keystrokes
   */

  void update() {
    if (keyPressed == true) {
      if (keyCode == RIGHT)
      {
        p.xpos = p.xpos + 6;
      } else if (keyCode == LEFT)
      {
        p.xpos = p.xpos - 6;
      } else if (keyCode == UP)
      {
        p.ypos = p.ypos - 6;
      } else if (keyCode == DOWN)
      {
        p.ypos = p.ypos + 6;
      }
    }
  }
}
