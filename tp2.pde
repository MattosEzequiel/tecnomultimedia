//https://www.youtube.com/watch?v=D0YGayu-iAs
//Mattos Ezequiel
//legajo:91361/5
//tp2


float max_distance;

int value = 0;

void setup() {
  size(800, 800); 
  noStroke();
  max_distance = dist(0, 0, width, height);
}

void draw() {
  background(3);
  if (value==1) {
    for (int i = 0; i <= width; i += 40) {
      for (int j = 0; j <= height; j += 40) {
        float ilusion = dist(mouseX, mouseY, i, j);
        ilusion = ilusion/max_distance * 50;
        fill(6, 255, 148);
        rect(i, j, ilusion, ilusion);
      }
    }
  } else {

    fill(6, 255, 148);
    rect(0, 0, 800, 800);

      textSize(38);
    background (0);
    text ("Clickear para iniciar", 210, 490);
    text("Clickear para reiniciar", 210, 600);
  }
}

void mouseClicked() 

{
  if (value == 0) {
    value = 1;
  } else {
    value = 0;
  }
}
