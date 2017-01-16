float Player1X = 0;
float Player1Y = 0;

boolean keyz[] = new boolean [8];

void setup(){
  size(1280,720);  
}

void draw(){
  background(71);
  rect(Player1X, Player1Y, 50,50);

  
  //Player 1 Controls
  if(keyz[0]){
    Player1Y = Player1Y - 10;
  }
  if(keyz[1]){
    Player1Y = Player1Y + 10;
  }
  if(keyz[2]){
    Player1X = Player1X - 10;
  }
  if(keyz[3]){
    Player1X = Player1X + 10;
  }

}


void keyPressed() {
  if (key == 'w')        keyz[0] = true;
  if (key == 's')        keyz[1] = true;
  if (key == 'a')        keyz[2] = true;
  if (key == 'd')        keyz[3] = true;
}
 
void keyReleased() {
  if (key == 'w')        keyz[0] = false;
  if (key == 's')        keyz[1] = false;
  if (key == 'a')        keyz[2] = false;
  if (key == 'd')        keyz[3] = false;
}