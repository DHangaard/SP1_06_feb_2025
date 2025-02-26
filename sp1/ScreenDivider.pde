// Class needs to be initialized after setup ( size() )

class ScreenDivider {

  // Data
  int x;
  int yTop;
  int yBottom;
  int strokeColor;
  
  // int for strokeWeight?


  // Constructor
  ScreenDivider() {
    x = width/2;
    yTop = 0;
    yBottom = height;
    strokeColor = color(255);
  }
  
  // Methods
  void display(){
   strokeWeight(5);
   stroke(strokeColor);
   line(x, yTop, x, yBottom);
  }
}
