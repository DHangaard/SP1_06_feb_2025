class Team {

  // Attributes
  float x;
  float y;

  float offset;
  float textOffset;
  float shadowOffset;

  float boxWidth;
  float boxHeight;

  int white;
  int black;
  int grey;

  String[] teamNameList;
  PImage[] teamFlagList;

  // Constructor
  Team(float x, float y) { // Maybe no parameters here?

    this.x = x;
    this.y = y;
    offset = .1;

    boxWidth = width * .45;
    boxHeight = height * .08;

    white = color(255);
    black = color(0);
    grey = int(215);
    constrain(grey, 225, 255);
  }

  // Methods
  // Create white box with groupColor
  void teamBox(float x, float y, int groupColor) {

    // White box
    rectMode(CORNER);
    noStroke();
    fill(255);

    rect(x, y, boxWidth, boxHeight);

    // Group color indicator
    float groupColorIndicatorWidth = boxWidth * .035;
    float groupColorIndicatorX = x + (boxWidth - groupColorIndicatorWidth);

    rectMode(CORNER);
    noStroke();
    fill(groupColor);
    rect(groupColorIndicatorX, y, groupColorIndicatorWidth, boxHeight);
  }

  // Create team flag and name
  void teamInfo(float x, float y, int team) {

    float flagWidth = boxWidth * .175;
    float flagHeight = boxHeight + 1;

    float textX = x + (boxWidth * .25);
    float textY = y + (boxHeight / 2);

    float shadowX = x + flagWidth;
    float shadowYBottom = y + boxHeight;

    float teamNameSize = height * .07;

    // Array
    teamNameList = new String[16];

    // Group A
    teamNameList[0] = "RUSSIA";
    teamNameList[1] = "SAUDI ARABIA";
    teamNameList[2] = "EGYPT";
    teamNameList[3] = "URUGUAY";

    // Group B
    teamNameList[4] = "PORTUGAL";
    teamNameList[5] = "SPAIN";
    teamNameList[6] = "MOROCCO";
    teamNameList[7] = "IRAN";

    // Group C
    teamNameList[8] = "FRANCE";
    teamNameList[9] = "AUSTRALIA";
    teamNameList[10] = "PERU";
    teamNameList[11] = "DENMARK";

    // Group D
    teamNameList[12] = "ARGENTINA";
    teamNameList[13] = "ICELAND";
    teamNameList[14] = "CROATIA";
    teamNameList[15] = "NIGERIA";

    teamFlagList = new PImage[16];

    // Group A
    teamFlagList[0] = loadImage("russiaFlag.png");
    teamFlagList[1] = loadImage("saudiArabiaFlag.png");
    teamFlagList[2] = loadImage("egyptFlag.png");
    teamFlagList[3] = loadImage("uruguayFlag.png");

    // Group B
    teamFlagList[4] = loadImage("portugalFlag.png");
    teamFlagList[5] = loadImage("spainFlag.png");
    teamFlagList[6] = loadImage("moroccoFlag.png");
    teamFlagList[7] = loadImage("iranFlag.png");

    // Group C
    teamFlagList[8] = loadImage("franceFlag.png");
    teamFlagList[9] = loadImage("australiaFlag.png");
    teamFlagList[10] = loadImage("peruFlag.png");
    teamFlagList[11] = loadImage("denmarkFlag.png");

    // Group D
    teamFlagList[12] = loadImage("argentinaFlag.png");
    teamFlagList[13] = loadImage("icelandFlag.png");
    teamFlagList[14] = loadImage("croatiaFlag.png");
    teamFlagList[15] = loadImage("nigeriaFlag.png");


    // Display shadow
    for (int i = 255; i >= 0; i -= 5) {
      strokeWeight(2);
      strokeCap(SQUARE);
      stroke(grey, i);
      line(shadowX, y, shadowX, shadowYBottom);
      shadowX += 1;
      grey++;
    }


    // Display flag
    image(teamFlagList[team], x, y, flagWidth, flagHeight);


    // Display text
    textAlign(LEFT, CENTER);
    textSize(teamNameSize);
    fill(0);
    text(teamNameList[team], textX, textY);
  }



  // Display flag, shadow and name inside box
  void displayTeam(float x, float y, int groupColor, int team) {
    teamBox(x, y, groupColor);
    teamInfo(x, y, team);
  }
}
