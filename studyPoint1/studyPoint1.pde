// Studypoint 1 //<>//
// 06 march 2025
// DHangaard



// Declare Group objects
Group groupA;
Group groupB;
Group groupC;
Group groupD;

ScreenDivider screenDivider;

// Declare and initialize variables used in main
// Colors
int groupBlue = color(40, 215, 255);
int groupYellow = color(255, 255, 40);
int backgroundBlue = color(0, 25, 125);

int strokeThickness = 5;

// Positioning
float leftX;
float rightX;
float topY;
float bottomY;


void setup() {
  size(1280, 720); // should work at all sizes, but use 1280, 720 as test
  background(backgroundBlue);

  // Initialize variables
  leftX = width * .025;
  rightX = width * .525;
  topY = height * .1;
  bottomY = height * .6;


  // Instantiate objects
  groupA = new Group(leftX, topY, 'A', groupBlue);
  groupB = new Group(leftX, bottomY, 'B', groupYellow);
  groupC = new Group(rightX, topY, 'C', groupBlue);
  groupD = new Group(rightX, bottomY, 'D', groupYellow);

  screenDivider = new ScreenDivider();
}



void draw() {
  // Divide screen with white line
  screenDivider.display(strokeThickness);

  // Display groups with team names and flags
  groupA.display(0, 1, 2, 3);
  groupB.display(4, 5, 6, 7);
  groupC.display(8, 9, 10, 11);
  groupD.display(12, 13, 14, 15);







  // *** TEST BELOW ***


  // vertical line for allignment testing - DELETE THIS LATER
  // DELETE BETWEEN THIS
  strokeWeight(5);
  stroke(255);
  // line(0, height/2, width, height/2);
  // DELETE BETWEEN THIS


  // Test size and positioning for rect
  // Create variables for placement and size + offset
  rectMode(CORNER);
  noStroke();
  fill(255);

  // *** Lift boxes up a tiny bit
  float offset_ = height * .1;
  float y_ = height * .1;
  float x_ = width * .025;
  // y_ = height * .6;
  // x_ = width * .525;
  float boxW = width * .45;
  float boxH = height * .08;

  float colorBoxWidth = boxW * .035;

  rect((width * .025), (height * .1), (width * .45), (height * .08));

  // Line with team color
  rectMode(CORNER);
  noStroke();
  fill(255, 255, 40);
  rect(x_ + boxW - colorBoxWidth, y_, colorBoxWidth, boxH);

  /*
  // value for i = 50, test with height
   // value for increment = 75, test with height
   
   for (float i = 0; i < 4; i ++) {
   fill(255);
   rect(x_, y_, boxW, boxH);
   y_ += offset_;
   
   
   // Line with team color
   rectMode(CORNER);
   noStroke();
   fill(255, 255, 40);
   rect(x_ + boxW - colorBoxWidth, y_, colorBoxWidth, boxH);
   }
   
   // Display groupName
   textAlign(CENTER, CENTER);
   textSize(height*.04);
   fill(255);
   text("GROUP A", width*.25, height*.06);
   text("GROUP B", width*.25, height*.56);
   
   
   // Lower left
   x_ = width * .025;
   y_ = height * .6;
   
   for (float i = 0; i < 4; i ++) {
   fill(255);
   rect(x_, y_, boxW, boxH);
   y_ += offset_;
   }
   
   
   // Upper right
   x_ = width * .525;
   y_ = height * .1;
   
   for (float i = 0; i < 4; i ++) {
   rect(x_, y_, boxW, boxH);
   y_ += offset_;
   }
   
   
   // Lower right
   x_ = width * .525;
   y_ = height * .6;
   
   for (float i = 0; i < 4; i ++) {
   rect(x_, y_, boxW, boxH);
   y_ += offset_;
   }
   */


  PImage[] flagImage = new PImage[1];
  // List of images
  float flagW = boxW * .175;
  float flagH = boxH + 1;
  int grey = 225;

  flagImage[0] = loadImage("russiaFlag.png");
  image(flagImage[0], x_, y_, flagW, flagH);
  // boxH + 1 for no white line underneath
  //boxW * .175

  for (int i = 255; i >= 0; i -= 5) {
    strokeWeight(2);
    strokeCap(SQUARE);
    stroke(grey, i);
    line(x_+flagW, y_, x_+flagW, y_+boxH);
    x_ += 1;
    grey++;
  }

  String[] flagString = new String[16];
  // Group A
  flagString[0] = "RUSSIA";
  flagString[1] = "SAUDI ARABIA";
  flagString[2] = "EGYPT";
  flagString[3] = "URUGUAY";

  // Group B
  flagString[4] = "PROTUGAL";
  flagString[5] = "SPAIN";
  flagString[6] = "MOROCCO";
  flagString[7] = "IRAN";

  // Group C
  flagString[8] = "FRANCE";
  flagString[9] = "AUSTRALIA";
  flagString[10] = "PERU";
  flagString[11] = "DENMARK";

  // Group D
  flagString[12] = "ARGENTINA";
  flagString[13] = "ICELAND";
  flagString[14] = "CROATIA";
  flagString[15] = "NIGERIA";

  float textX = x_+(boxW*.175);
  float textY = y_+(boxH/2);
  
  textAlign(LEFT, CENTER);
  textSize(height*.07);
  fill(0);
  text(flagString[0], textX, textY);
}
