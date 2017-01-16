class System {
  Player player;
  //Width, height, blokkens størrelse
  int w = 800;
  int h = 400;
  PVector gravity;
  ArrayList<Map> maps = new ArrayList<Map>();

  System() {
    for (int i = 0; i > 1; i++) {
    }
  }

  void Update() {
    Map map = maps.get(player.mapID);
    
    for (Block b : map.blocks) {
      b.Update();
    }
  }
}