// Class needs to be initialized after size() in setup

class ScreenDivider {

  // Attributes
  int x;
  int yTop;
  int yBottom;
  int strokeColor;
  int strokeThickness;

  // int for strokeWeight?


  // Constructor
  ScreenDivider() {
    x = width/2;
    yTop = 0;
    yBottom = height;
    strokeColor = color(255);
  }

  // Methods
  void display(int strokeThickness) {

    this.strokeThickness = strokeThickness;

    strokeWeight(strokeThickness);
    stroke(strokeColor);
    line(x, yTop, x, yBottom);
  }
}
