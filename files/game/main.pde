

void setup() {
  size(1300, 900);
}


void draw() {
 receptors();
  
}

// Create Receptor
void receptors() {
  for(int boxWidth = 150; boxWidth <= width; boxWidth = boxWidth + 300) {
    square(boxWidth, 800, 100);
  }
}
