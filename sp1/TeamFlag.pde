class TeamFlag {

  // Data
  PImage[] teamFlag;

  // Constructor
  TeamFlag() {

    teamFlag = new PImage[16];

    // Group A
    teamFlag[0] = loadImage("russiaFlag.png");
    teamFlag[1] = loadImage("saudiArabiaFlag.png");
    teamFlag[2] = loadImage("egyptFlag.png");
    teamFlag[3] = loadImage("uruguayFlag.png");

    // Group B
    teamFlag[4] = loadImage("portugalFlag.png");
    teamFlag[5] = loadImage("spainFlag.png");
    teamFlag[6] = loadImage("moroccoFlag.png");
    teamFlag[7] = loadImage("iranFlag.png");

    // Group C
    teamFlag[8] = loadImage("franceFlag.png");
    teamFlag[9] = loadImage("australiaFlag.png");
    teamFlag[10] = loadImage("peruFlag.png");
    teamFlag[11] = loadImage("denmarkFlag.png");

    // Group D
    teamFlag[12] = loadImage("argentinaFlag.png");
    teamFlag[13] = loadImage("icelandFlag.png");
    teamFlag[14] = loadImage("croatiaFlag.png");
    teamFlag[15] = loadImage("nigeriaFlag.png");
  }

  // Methods
  void flagShadow() {
  }
  
   void display(int i) {
    // image(teamFlag[i]) - use reference
  }

  PImage getTeamFlag() {
    // return array to variable in TeamInfo
  }
}
