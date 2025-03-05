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
    grey = color(225);
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
    float groupColorIndicator = boxWidth * .035;

    rectMode(CORNER);
    noStroke();
    fill(groupColor);
    rect(x + (boxWidth - groupColorIndicator), y, groupColorIndicator, boxHeight);
  }

  // Create team flag and name
  void teamInfo(float x, float y, int teamName, int teamFlag) {

    float flagWidth = boxWidth * .175;
    float flagHeight = boxHeight + 1;

    float textX = x + (boxWidth * .175);
    float textY = y + (boxHeight / 2);

    float teamNameSize = height * .07;

    // Array 
    teamNameList = new String[16];
    
    // Group A
    teamNameList[0] = "RUSSIA";
    teamNameList[1] = "SAUDI ARABIA";
    teamNameList[2] = "EGYPT";
    teamNameList[3] = "URUGUAY";

    // Group B
    teamNameList[4] = "PROTUGAL";
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
  }
  
  /*
  for (int i = 255; i >= 0; i -= 5) {
   strokeWeight(2);
   strokeCap(SQUARE);
   stroke(grey, i);
   line(x+flagWidth, y, x+flagWidth, y+boxHeight);
   x_ += 1;
   grey++;
   }
   */

  /*
  // Create flag shadow
   void flagShadow(float x, float y) {
   
   // Declare and initialize local variables
   int strokeWidth = 2;
   
   for (int i = 255; i >= 0; i -= 5) {
   
   // experiment with strokeWeight
   strokeWeight(strokeWidth);
   
   // strokeCap SQUARE to allign with rect
   strokeCap(SQUARE);
   
   // int i as alpha to reduce opacity
   stroke(grey, i);
   
   
   // x + length of flag img
   line(x+75, y, x+75, y+h-1); // due to line going over edge
   
   // Increment x with value of strokeWidth
   x += strokeWidth-1; // -1 for no spacing between lines
   grey++;
   }
   }
   */

  // Display flag, shadow and name inside box
  void display() {
  }
}
