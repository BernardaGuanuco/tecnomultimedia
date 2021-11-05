class Juego {
  Personaje p;
  Fondo f;
  Roca []r = new Roca [2];
  Energia [] e = new Energia [5] ;
  int puntos, vidas;
  String estado;

  Juego () {
    p = new Personaje (width/2, height-50);
    f = new Fondo ();
    for (int i=0; i<e.length; i++) {
      e [i]= new Energia ();
    }
    for (int i=0; i<r.length; i++) {
      r [i]= new Roca ();
    }
    estado = "intrucc";
  }

  void dibujarJuego () {
    if (estado.equals("intrucc")) {
      f.dibujarFondo (0);
      f.pantallas (255, 255, 255);
      text ("Te quedaste sin bateria en la linterna\n recogé 15 energias, pero tené\n cuidado con las piedras, tenés 3 vidas", width/2, height/4);
      text ("Movimiento = Flechas LEFT y RIGHT", width/2, height/1.5);
      text ("Presiona S para comenzar", width/2, height/1.1);
      fill (100, 0, 0);
    }
    if (estado.equals ("intrucc") && key=='s') {
      estado = "juego";
    }

    if (estado.equals("juego")) {
      f.dibujarFondo (1);
      fill (255, 255, 0);
      text (puntos, 50, 50);
      fill (150);
      text (vidas, 350, 50);
      p.dibujarPersonaje ();
      for (int i=0; i<e.length; i++) { 
        e [i].dibujarEnergia ();
        e [i].caerEnergia ();
      }
      for (int i=0; i<r.length; i++) { 
        r [i].dibujarRoca ();
        r [i].caerRoca ();
      }
      p.moverPersonaje ();
      colisionJuego ();
    }
    if (estado.equals ("juego") && puntos==15) {
      puntos =0;
      vidas=0;
      estado = "ganar";
    }
    if (estado.equals ("ganar")) {
      f.dibujarFondo (3);
      f.pantallas (255, 255, 0);
      text ("¡GANASTE!\n Conseguiste la energía suficiente\n ya podes volver a la casa", width/2, height/4);
      fill (255);
      text ("Presiona D para volver", width/2, height/1.1); 
      fill (100, 0, 0);
    }
    if (estado.equals ("ganar") && key=='d') { 
      estado.equals ("intrucc");
      volver ();
    }
    if (estado.equals ("juego") && vidas==3) {
      estado = "perder";
    }
    if (estado.equals("perder")) {
      f.dibujarFondo (2);
      f.pantallas(170, 0, 0);
      text ("¡PERDISTE!\n No conseguiste suficiente energia\n Todavia no podés volver", width/2, height/7);
      fill (255);
      text ("Presiona D para reintentar", width/2, height/1.1);
      fill (100, 0, 0);
    }
    if (estado.equals ("perder") && key=='d') {
      estado.equals ("intrucc");
      volver ();
    }
  }

  void colisionJuego () {
    for (int i=0; i<e.length; i++) { 
      float distan = (dist (e[i].ex, e [i].ey, p.px, p.py));
      if (distan < e [i].etam/2+p.tam/2) {
        e [i].colision ();
        puntos ++;
      }
    }
    for (int i=0; i<r.length; i++) { 
      float distan = (dist (r[i].rx, r[i].ry, p.px, p.py));
      if (distan < r [i].rtam/2+p.tam/2) {
        r[i].colision ();
        vidas ++;
      }
    }
  }

  void volver () {
    puntos=0;
    vidas=0;
    f = new Fondo ();
    p = new Personaje (width/2, height-50);
    for (int i=0; i<e.length; i++) {
      e [i]= new Energia ();
    }
    for (int i=0; i<r.length; i++) {
      r [i]= new Roca ();
    }
    estado = "intrucc";
  }
}
