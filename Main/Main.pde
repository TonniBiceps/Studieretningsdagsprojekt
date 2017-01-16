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
  if (key == '1')        system.player.keys[4] = true;
  if (key == '2')        system.player.keys[5] = true;
  if (key == '3')        system.player.keys[6] = true;
}

void keyReleased() {
  if (key == 'a')        system.player.keys[0] = false;
  if (key == 'd')        system.player.keys[1] = false;
  if (key == 'w')        system.player.keys[2] = false;
  if (key == 's')        system.player.keys[3] = false;
  if (key == '1')        system.player.keys[4] = false;
  if (key == '2')        system.player.keys[5] = false;
  if (key == '3')        system.player.keys[6] = false;
}