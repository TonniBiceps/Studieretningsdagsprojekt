class System {
  int mapCount = 2;
  Player player;
  //Width, height, blokkens størrelse
  int w = 800;
  int h = 400;
  PVector gravity;
  ArrayList<Map> maps = new ArrayList<Map>();

  System() {
    this.player = new Player();
    this.player.pos.y = h - 50;
    
    for (int i = 0; i < mapCount; i++) {
      Map map = new Map(this);
      
      maps.add(map);
      map.fromFile("map" + i + ".txt");
    }
  }

  void Update() {     
    Map map = maps.get(player.mapID);
    
    for (Block b : map.blocks) {
      b.Update();
    }
    
    player.Update();
  }
}