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

  // Divide screen with white line
  screenDivider.display(strokeThickness);

  // Display groups with team names and flags
  groupA.display(0, 1, 2, 3);
  groupB.display(4, 5, 6, 7);
  groupC.display(8, 9, 10, 11);
  groupD.display(12, 13, 14, 15);
}
