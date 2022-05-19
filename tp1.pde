PImage titulo1, theend, puerta1, sherckbebes, sherkyburro, sherkyfiona, puerta2, fondocomida, paisaje, finalizar, dream ;
int izq, der, arriba, abajo;
PFont tipografia;
boolean botton = false;





void setup() {
  size (600, 600);
  //IMAGENES

  titulo1=loadImage("titulo1.jpg");
  theend=loadImage ("the end.jpg");
  sherckbebes=loadImage ("sherck bebes.jpg");
  puerta1=loadImage ("puerta 1.png");
  puerta2=loadImage ("puerta 3.jpg");
  sherkyburro= loadImage ("burro y sherk.jpg");
  sherkyfiona= loadImage ("shrek y fiona.jpg");
  fondocomida= loadImage ("fondo comida.jpg");
  paisaje= loadImage ("fondo.png");
  finalizar= loadImage ("finalizar 1.png");
  tipografia = loadFont  ("GillSans-UltraBoldCondensed-48.vlw");
  dream= loadImage ("DreamworksAnimation-logo.png");
}



void draw() {
  background (255);
  frameCount --;

  image (dream, 0, 0, width, height);

  stroke (155,187,255);
  fill (255, 193, 230);
  fill(255);
  textSize(38);
  text ("PLAY", 246, 510);

  textFont(tipografia, 44);


  println (frameCount);
  // BOTON
  if (botton==true) {
    background (255);

    frameCount++;
    izq --;
    der ++;
    arriba --;
    abajo ++;
  }
  //TEXTOS


  if (frameCount >0 && frameCount <390) {
    image(titulo1, 0, 300+arriba, width, height/2);
  }
  if (frameCount >390 && frameCount <500) {
    image(puerta1, 0, 0, width, height);
  }
  if (frameCount >500 && frameCount <600) {
    image(puerta2, 0, 0, width, height);
  }

  if (frameCount >600 && frameCount <900) {
    image(sherkyburro, 0, 0, width, height);
    fill(0);
    textSize (40);
    text("SHERK Y BURRO: \n (Eddie Murphy) \n (Mike Myers)", -880+der, 50 );
  }
  if (frameCount >900 && frameCount <1050) {
    image(sherkyfiona, 0, 0, width, height);
    textSize (35);
    fill(0);
    text("FIONA: \n (Cameron Diaz)", -1000+der, 50 );
  }

  if (frameCount >1050 && frameCount <1250) { 
    image(fondocomida, 0, 0, width, height);
    text ("\n Producción: \nJeffrey Katzenberg  \nAron Warner \nSteven Spielberg     \nGuion: \nTed Elliott \nTerry Rossio\nJoe Stillman ", 20, -1200+abajo);
  }
  if (frameCount >1250 && frameCount <1400) {
    image(paisaje, 0, 0, width, height);
    text( "\n Dirección: \n Andrew Adamson \n Vicky Jenson", 175, -1250+abajo  );
  }
  if (frameCount >1400 && frameCount <1500) {
    image(theend, 0, 0, width, height);
  }

  if (frameCount >1500) {
    image (finalizar, 0, 0, width, height);
    textSize (45);
    fill (0);
    text("PRESIONAR W", 140, 150);
  }
}
//REINICIO
void keyPressed() {
  if (key == 'w' || key == 'W') { 
    frameCount = 0;
    izq=0; 
    der =0;
    arriba=0; 
    abajo=0;
    botton= false;
  }
}

void mouseClicked() {
  if (dist(mouseX, mouseY, 290, 500) < 75) {
    botton=true;
  }
}
