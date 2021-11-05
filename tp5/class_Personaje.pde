class Personaje {
  float px, py, tam;
  PImage personaje;

  Personaje (float px_, float py_) {
    px = px_;
    py = py_;
    tam = 50;
    personaje = loadImage ("personaje.png");
  }

  void dibujarPersonaje () {
    image (personaje, px, py);
    personaje.resize (int (tam), int (tam));
  }

  void moverPersonaje () {
    if (keyCode == RIGHT && px<width-tam) {
      px++ ;
    }
    if (keyCode == LEFT && px>0) {
      px--;
    }
  }
}
