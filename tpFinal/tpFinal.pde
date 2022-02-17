/*
Trabajo Practico Final
Alumna: María Bernarda Guanuco
Legajo: 88153/4
Profesor: David Bedoian
Link video: https://www.youtube.com/watch?v=LG_jXCSKQpc
*/

Historia h;

void setup() {
  size (400, 600);
  h = new Historia ();
}

void draw () {
  background (0);
  h.dibujarHistoria ();
}

void keyPressed () {
  h.dibujarAcciones ();
}
