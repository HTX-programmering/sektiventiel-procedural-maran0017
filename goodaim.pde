void setup() {
  size(1800, 900);
  strokeWeight(2);
}

void draw() {
  background(255,255,255);
  drawHatman(100, 240); 
  drawHatman(1600, 240); // Hatman er navnet på min figur og så har jeg lagt den i en  med void funktionen 
}

void drawHatman(float x, float y) { // navne på de ting jeg tegner til min figur, 
  hoved(x, y);
  øjne(x, y);
  nose(x, y);
  mund(x, y);
  hat(x, y);
  krop(x, y + 75);
  arme(x, y + 75);
  ben(x, y + 175);
}

void hoved(float x, float y) {
  fill(255);
  ellipse(x, y, 150, 150);
}

void øjne(float x, float y) {
  fill(0);
  rect(x - 40, y - 30, 30, 30);
  rect(x + 10, y - 30, 30, 30);
}

void nose(float x, float y) {
  fill(255);
  ellipse(x, y + 10, 50, 50);
}

void mund(float x, float y) {
  noFill();
  line(x - 25, y + 45, x + 25, y + 45);
  arc(x, y + 45, 50, 50, 0, PI);
}

void hat(float x, float y) {
  fill(0);
  rect(x - 40, y - 70, 80, 5);
  rect(x - 25, y - 120, 50, 50);
}

void krop(float x, float y) {
  fill(255);
  rect(x - 25, y, 50, 100);
}

void arme(float x, float y) {
  stroke(0);
  line(x - 25, y, x - 75, y + 50); // arm 1
  line(x + 25, y, x + 75, y + 50); // arm 2
}

void ben(float x, float y) {
  stroke(1);
  line(x - 15, y, x - 15, y + 150); // ben 1  
  line(x + 15, y, x + 15, y + 150); // ben 2
}
