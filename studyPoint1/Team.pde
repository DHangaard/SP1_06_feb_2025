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
  }

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
