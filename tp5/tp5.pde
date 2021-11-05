/*
TP5: Video Juego
 Alumna: María Bernarda Guanuco
 Comision: 1
 Profesor = José Luis Bugiolachi
 Historia: Corazón Delator
 URL: https://youtu.be/KxyVp8ZOR7k // Me pasé un poco con el largo del video.
 */

Juego j;

void setup() {
  size (400, 600);
  j = new Juego ();
}

void draw () {
  background (0);
  j.dibujarJuego ();
}
