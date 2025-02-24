// Shadow function

// Test gradient function
// Declare and initialize variables used for rect / line
// Declare and initialize variables for grey
// Use for loop to scale down opacity on grey lines inside rect

int x = 50;
int y = 50;
int w = 400;
int h = 50;
int grey = 225;
int strokeWidth = 2;

void setup() {
  size(500, 150);
  background(0);

  // Set alpha to 100 for easier adjusting
  colorMode(RGB, 255, 255, 255, 255);

  noStroke();
  fill(255);
  rect(x, y, w, h);

  for (int i = 255; i >= 0; i -= 5) {
    
    // experiment with strokeWeight
    strokeWeight(strokeWidth);
    // strokeCap SQUARE to allign with rect
    strokeCap(SQUARE);
    // int i as alpha to reduce opacity
    stroke(grey, i);
    
    
    // x + length of flag img
    line(x+75, y, x+75, y+h-1); // due to line going over edge
    
    // Increment x with value of strokeWeight - make this a variable 
    x += strokeWidth-1; // -1 for no spcing between lines
    grey++;
  }
}
