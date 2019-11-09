// Assignment 9 - Sound!!!
// Moving the mouse changes the amp and rate of the bg music
// pressing the buttons add different sounds as well

// Audio Sources
// https://freesound.org/people/zagi2/sounds/222655/
// https://freesound.org/people/zagi2/sounds/222552/
// https://freesound.org/people/SSS_Samples/sounds/368375/
// https://freesound.org/people/DirtyJewbs/sounds/147522/
// https://freesound.org/people/RutgerMuller/sounds/51243/

import processing.sound.*;

PImage redspiderlily;
SoundFile bgmusic;
SoundFile koto;
SoundFile koto2;
SoundFile glitch;
SoundFile beat;

float kotoButton;
float koto2Button;
float glitchButton;
float beatButton;

color a = color(255);
color b = color(255);
color c = color(255);
color d = color(255);

void setup() {
  background(0); 
  size(900, 500);
  redspiderlily = loadImage("redspiderlily.png");

  bgmusic = new SoundFile( this, "bgmusic.wav");
  koto = new SoundFile(this, "koto.wav");
  koto2 = new SoundFile(this, "koto2.wav");
  glitch = new SoundFile(this, "glitch.wav");
  beat = new SoundFile(this, "beat.wav");
  bgmusic.loop();
}

void draw()
{
  image(redspiderlily, 50, 0);
  fill(a);
  ellipse(250, 450, 50, 50);
  fill(b);
  ellipse(450, 450, 50, 50);
  fill (c);
  ellipse(650, 450, 50, 50);
  fill(d);
  ellipse(850, 450, 50, 50);

  float change = map(mouseX, 0, 900, 0.7, 1.5);
  float change2 = map(mouseY, 0, 500, 0.0, 0.5);

  bgmusic.rate(change);
  bgmusic.amp(change2);

  kotoButton = dist (mouseX, mouseY, 250, 450);
  koto2Button = dist (mouseX, mouseY, 450, 450);
  glitchButton = dist (mouseX, mouseY, 650, 450);
  beatButton = dist (mouseX, mouseY, 850, 450);
}


void mousePressed() {
  if (kotoButton <=50) {
    a = color(255, 0, 0);
    koto.loop(1, 2);
  } 

  if (koto2Button <=50) {
    b = color(255, 128, 0);
    koto2.loop(1, 2);
  }

  if (glitchButton <=50) {
    c = color(255, 255, 0);
    glitch.loop(1, 0.5);
  }

  if (beatButton <=50) {
    d = color(128, 255, 0);
    beat.loop(1, 1);
  }
}
