class Historia {
  Pantallas p;
  Juego j;
  int pantalla, py;
  PFont Titulo, Textos;

  Historia () {
    p = new Pantallas ();
    j = new Juego ();
    pantalla = 1;
    Titulo = loadFont ("Chiller-Regular-48.vlw");
    Textos = loadFont ("BodoniMTPosterCompressed-35.vlw");
  }

  void dibujarHistoria() { //----------------------------------------------------------------------------------CREO LAS DISTINTAS PANTALLAS DE LA AVENTURA

    if (pantalla ==1) { //------------------------------------------------------------------PORTADA
      p.dibujarPantalla (0, Titulo, 255, 60, 35, width/2, 170);
      p.dibujarBotones (50, 500, 100, 50, "Left", 100, 495, 18, 100, 537);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 19, 302, 537);
    } else if (pantalla==0) { //------------------------------------------------------------CREDITOS
      p.dibujarPantalla (18, Textos, 255, 30, 36, width/2, py+height/2);
      fill (255);
      textFont (Titulo);
      text ("Corazón Delator", width/2, py+height/3);
      p.dibujarBotones (50, 500, 300, 50, "Right", 80, 470, 37, 200, 537);
      if (py==height);
      py--;
    } else if (pantalla==2) { //------------------------------------------------------------INICIO
      p.dibujarPantalla(1, Textos, 150, 30, 0, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 31, 302, 537);
    } else if (pantalla==3) { //------------------------------------------------------------IDEA DE MATAR
      p.dibujarPantalla (2, Textos, 150, 30, 1, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 31, 302, 537);
    } else if (pantalla==4) { //------------------------------------------------------------MODO DE OPERAR
      p.dibujarPantalla (3, Textos, 150, 30, 2, width/2, 50);
      p.dibujarBotones (50, 400, 300, 50, "Up", width/2, 390, 20, width/2, 437);
      p.dibujarBotones (50, 500, 300, 50, "Down", width/2, 490, 21, width/2, 537);
    } else if (pantalla==5) { // -----------------------------------------------------------OCTAVA NOCHE
      p.dibujarPantalla (4, Textos, 255, 30, 3, width/2, 50);
      p.dibujarBotones (50, 400, 300, 50, "Up", width/2, 390, 22, width/2, 437);
      p.dibujarBotones (50, 500, 300, 50, "Down", width/2, 490, 23, width/2, 537);
    } else if (pantalla==6) {//-------------------------------------------------------------VIEJO GRITA
      p.dibujarPantalla(5, Textos, 150, 30, 4, 70, 50);
      p.dibujarBotones (50, 400, 300, 50, "Up", width/2, 390, 24, width/2, 437);
      p.dibujarBotones (50, 500, 300, 50, "Down", width/2, 490, 25, width/2, 537);
    } else if (pantalla==7) {//-------------------------------------------------------------DECISION
      p.dibujarPantalla (13, Textos, 255, 30, 5, width/2, 50);
      p.dibujarBotones (50, 400, 300, 50, "Up", width/2, 390, 26, width/2, 437);
      p.dibujarBotones (50, 500, 300, 50, "Down", width/2, 490, 27, width/2, 537);
    } else if (pantalla==8) { //------------------------------------------------------------LATIDO DE CORAZÓN
      p.dibujarPantalla (6, Textos, 150, 30, 6, width/2, 50);
      p.dibujarBotones (50, 400, 300, 50, "Up", width/2, 390, 26, width/2, 437);
      p.dibujarBotones (50, 500, 300, 50, "Down", width/2, 490, 28, width/2, 537);
    } else if (pantalla==9) {//-------------------------------------------------------------MATAMOS
      p.dibujarPantalla (7, Textos, 0, 30, 7, width/2, 50);
      p.dibujarBotones (50, 400, 300, 50, "Up", width/2, 390, 29, width/2, 437);
      p.dibujarBotones (50, 500, 300, 50, "Down", width/2, 490, 30, width/2, 537);
    } else if (pantalla==10) {//------------------------------------------------------------ESCONDER EL CUERPO EN LA CASA
      p.dibujarPantalla (8, Textos, 150, 30, 8, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 31, 302, 537);
    } else if (pantalla==11) { //-----------------------------------------------------------LLEGAN LOS POLICIAS
      p.dibujarPantalla (9, Textos, 150, 30, 9, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 31, 302, 537);
    } else if (pantalla==12) {//------------------------------------------------------------ESCUCHO QUE LATE EL CORAZÓN
      p.dibujarPantalla (10, Textos, 150, 30, 10, width/2, 50);
      p.dibujarBotones (50, 400, 300, 50, "Up", width/2, 390, 32, width/2, 437);
      p.dibujarBotones (50, 500, 300, 50, "Down", width/2, 490, 33, width/2, 537);
    } else if (pantalla==13) {//------------------------------------------------------------CONFIESO
      p.dibujarPantalla (14, Textos, 255, 30, 11, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 34, 302, 537);
    } else if (pantalla==14) {//------------------------------------------------------------ARREPENTIMIENTO
      p.dibujarPantalla (11, Textos, 255, 30, 12, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 34, 302, 537);
    } else if (pantalla==15) {//------------------------------------------------------------VIEJO ME MATA
      p.dibujarPantalla (16, Textos, 255, 30, 13, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 34, 302, 537);
    } else if (pantalla==16) {//------------------------------------------------------------LLEGAN LOS POLICAS 2
      p.dibujarPantalla (12, Textos, 255, 30, 14, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 31, 302, 537);
    } else if (pantalla==17) {//------------------------------------------------------------PERROS HUELEN
      p.dibujarPantalla (9, Textos, 150, 30, 15, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 31, 302, 537);
    } else if (pantalla==18) {//------------------------------------------------------------ME DETIENEN
      p.dibujarPantalla (17, Textos, 255, 30, 16, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 34, 302, 537);
    } else if (pantalla==19) {//------------------------------------------------------------POLICIAS SE VAN
      p.dibujarPantalla(15, Textos, 255, 30, 17, width/2, 50);
      p.dibujarBotones (250, 500, 100, 50, "Right", 300, 495, 34, 302, 537);
    } else if (pantalla==20) {//------------------------------------------------------------JUEG0
      j.dibujarJuego ();
      if (j.verSiGano()) {//---------------------------------------------------------------------------------------------------CONSULTAMOS SI GANAMOS EL JUEGO PARA ASÍ PODER PASAR A LA PANTALLA 21
        pantalla =21;
      }
    } else if (pantalla==21) {//------------------------------------------------------------GANAR JUEGO
      j.ganar ();
    }
  }

  void dibujarAcciones () {//--------------------------------------------------------------------------------------------------CREO LOS DISTINTOS CAMINOS DE LA HISTORIA

    if (keyCode==LEFT && pantalla==1) {
      pantalla=0;
    } else if (keyCode==RIGHT && (pantalla==0 ||pantalla==13 ||pantalla==14 ||pantalla==15 ||pantalla==18 ||pantalla==19)) {
      pantalla =1;
    } else if (keyCode==RIGHT && pantalla==1) {
      pantalla =2;
    } else if (keyCode==RIGHT && pantalla==2) {
      pantalla=3;
    } else if (keyCode==RIGHT && pantalla==3) {
      pantalla=4;
    } else if (keyCode==DOWN && pantalla==4) {
      pantalla=5;
    } else if (keyCode==DOWN && pantalla==5) {
      pantalla=6;
    } else if (keyCode==DOWN && pantalla==6) {
      pantalla=7;
    } else if (keyCode==DOWN && pantalla==7) {//-------------------------------------------------------------------------------EN ESTA PARTE COMIENZA EL JUEGO
      pantalla =20;
    } else if ((key == 'd' || key == 'D' )&& pantalla ==21) {
      pantalla =8;
    } else if (keyCode==DOWN && pantalla==8) {//-------------------------------------------------------------------------------ACÁ VOLVEMOS A LA AVENTURA
      pantalla=9;
    } else if (keyCode==DOWN && pantalla==9) {
      pantalla=10;
    } else if (keyCode==RIGHT && pantalla==10) {
      pantalla=11;
    } else if (keyCode==RIGHT && pantalla==11) {
      pantalla=12;
    } else if (keyCode==DOWN && pantalla==12) {
      pantalla=13;
    } else if (keyCode==UP && pantalla==4) {
      pantalla=9;
    } else if (keyCode==UP && (pantalla==5 || pantalla ==6)) {
      pantalla=14;
    } else if (keyCode==UP && (pantalla==7 || pantalla==8)) {
      pantalla=15;
    } else if (keyCode==UP && pantalla==9) {
      pantalla=16;
    } else if (keyCode==RIGHT && pantalla==16) {
      pantalla=17;
    } else if (keyCode==RIGHT && pantalla==17) {
      pantalla=18;
    } else if (keyCode==UP && pantalla==12) {
      pantalla=19;
    }
  }
}
