// Notes
float[] noteX = new float [100];
float[] noteY = new float [100];
int totalNotes = 0;
float noteSpeed = 3;

void setup() {
  size(1300, 900);

}

void draw() {
  background(0);
  receptors();
  drawNote();
  moveNote();
  
  if (frameCount % 60 == 1) {
    spawnNote();
  }
}

// Create Receptors
void receptors() {
  for (int boxWidth = 150; boxWidth <= width; boxWidth = boxWidth + 300) {
    square(boxWidth, 800, 100);
  }
}

// Draw Note
void drawNote() {
  for (int counter = 0; counter < totalNotes; counter++) {
    rect(noteX[counter], noteY[counter], 100, 100);
  }
}

// Spawn Note
void spawnNote() {
  int[] spawnPos = {150, 450, 750, 1050};
  noteX[totalNotes] = spawnPos[int(random(4))];
  noteY[totalNotes] = 0;
  totalNotes++;
}

// Move Note
void moveNote(){
  for (int i = 0; i < totalNotes; i++){
    noteY[i] += noteSpeed;
  }
}
