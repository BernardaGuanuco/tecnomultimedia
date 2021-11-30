void Botones (int px, int py, int tamx, int tamy, String texto, int pxT, int pyT, int numTexto, int pxT2, int pyT2) {
  fill (100, 0, 0);
  rect (px, py, tamx, tamy);
  textFont (Avisos);
  fill (100, 0, 0);
  textSize (18);
  text (texto, pxT, pyT); 
  textFont (Textos);
  fill (255);
  textSize (30);
  textAlign (CENTER);
  text (linea [numTexto], pxT2, pyT2);
}

void Fondo (int numFondo, PFont fuente, int fill, int tam, int numTexto, int pxT, int pyT ) {
  image (fotos[numFondo], 0, 0, width, height);
  textFont (fuente);
  fill (fill);
  textSize (tam);
  textAlign (CENTER);
  text (linea [numTexto], pxT, pyT);
}
