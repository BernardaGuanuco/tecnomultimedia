class Fondo {
  PFont Textos;
  int numFondo;
  PImage [] fondos = new PImage [4];

  Fondo () {
    Textos = loadFont ("BodoniMTPosterCompressed-35.vlw");
    textSize (30);
    for (int i = 0; i<fondos.length; i++) {
      fondos [i] = loadImage ("fondo"+i+".jpg");
    }
  }

  void dibujarFondo (int numFondo_) {
    numFondo = numFondo_;
    image (fondos [numFondo], 0, 0);
  }

  void pantallas(int fill_, int fill2_, int fill3_) {
    rect (77, height/1.18, 250, 50);
    fill(int (fill_), int (fill2_), int (fill3_));
    textAlign (CENTER);
    textFont (Textos);
  }
}
