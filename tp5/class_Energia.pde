class Energia {
  float ex, ey, etam, evel;
  PImage energia;
  boolean agarrar;

  Energia () {
    ex = random (50/2, width-50);
    ey = -100;
    etam =30;
    evel = random (2, 15);
    energia = loadImage ("rayo.png");
    agarrar= false;
  }

  void dibujarEnergia () {
    image (energia, ex, ey);
    energia.resize (int (etam), int (etam));
  }

  void volver () {
    ex = random (50/2, width-50);
    ey = -100;
    evel = random (5, 15);
  }

  void caerEnergia () {
    if (ey>height || agarrar) {
      volver ();
      agarrar = false;
    }
    ey = ey+evel;
  }

  void colision () {
    agarrar = true;
  }
}
