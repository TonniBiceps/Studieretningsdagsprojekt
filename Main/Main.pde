System system;

void setup() {
  size(800, 400);

  system = new System();
}

void draw() {
  background(71);
  system.Update();
}


void keyPressed() {
  if (key == 'a')        system.player.keys[0] = true;
  if (key == 'd')        system.player.keys[1] = true;
  if (key == 'w')        system.player.keys[2] = true;
  if (key == 's')        system.player.keys[3] = true;
}

void keyReleased() {
  if (key == 'a')        system.player.keys[0] = false;
  if (key == 'd')        system.player.keys[1] = false;
  if (key == 'w')        system.player.keys[2] = false;
  if (key == 's')        system.player.keys[3] = false;
  
}