MazeBorders m;

class MazeBorders {

  PImage mazeLayout;

  MazeBorders()
  {
    mazeLayout = loadImage("mergedmaze.png");
  }

  void display() {
    image(mazeLayout, 0, 0);
  }

  void update() {

    /* Here, I am checking the color of four pixels immediately surrounding the player 
    (top, bottom, left, right). It is grabbing the color fromthe mergedmaze.png
    
    if the color detected is that of the borderColor (which is define below), then an opposite amount
    of force will be applied towards the player, creating a border they cannot pass through
    */
    
    color playerRight = mazeLayout.get(p.xpos + 8, p.ypos);
    color playerLeft = mazeLayout.get(p.xpos - 8, p.ypos);
    color playerUp = mazeLayout.get(p.xpos, p.ypos - 8);
    color playerDown = mazeLayout.get(p.xpos, p.ypos + 8);

    color borderColor = mazeLayout.get(10, 10);

    if (playerRight == borderColor) {
      p.xpos = p.xpos - 6;
    } else if (playerLeft == borderColor) {
      p.xpos = p.xpos + 6;
    } else if (playerUp == borderColor) {
      p.ypos = p.ypos + 6;
    } else if (playerDown == borderColor) {
      p.ypos = p.ypos - 6;
    }
  }
}
