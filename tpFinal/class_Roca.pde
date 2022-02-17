class Roca {
  float rx, ry, rtam, rvel;
  PImage roca;
  boolean herir;

  Roca () {
    rx = random (50/2, width-50);
    ry = -100;
    rtam = 40;
    rvel = random (5, 15);
    roca = loadImage ("piedra.png");
    herir = false;
  }
  void volver () {
    rx = random (50/2, width-50);
    ry = -100;
    rvel = random (5, 15);
  }

  void dibujarRoca () {
    image (roca, rx, ry);
    roca.resize (30, 30);
  }

  void caerRoca () {
    if (ry>height || herir) {
      volver ();
      herir = false;
    }
    ry = ry+rvel;
  }
  void colision () {
    herir = true;
  }
}
