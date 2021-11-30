/*
Tecnologia Multimedial 2021
 TP 4°: Aventura Gráfica
 Comisión: 1, José Luís Bugiolachi
 Alumna: María Bernarda Guanuco
 Legajo: 88153/4
 Historia: Corazón Delator
 Autor: Edgar Alan Poe
 URL Video: https://youtu.be/i2_p5xwz1ws
 */

PImage [] fotos = new PImage [19];
PFont Titulo, Textos, Avisos;
int pantalla =1, py;
String [] linea = {"Yo amaba al buen anciano,\n pero tenia algo en desagradable.\n Era uno de sus ojos", "Cada vez que ese ojo se fijaba en mi mirada\n se me helaba la sangre.\n Lentamente comenzó a germinar en mi \n la idea de terminar con su vida", 
  "Todas las noches abria la puerta suavemente,\n introducia mi cabeza y una linterna.\n Luego iluminaba con un imperceptible\n rayo de luz el ojo de buitre.\n Pero siempre este estaba cerrado.", "La octava noche que intenté,\n el viejo se despertó por mi carcajada", "Viejo exclama:\n ¡Quien anda ahí!", 
  "Ya no aguantaba mas,\n pero queria hacer bien mi trabajo", "El ojo del viejo estaba\n completamente abierto y el\n sonido de su corazon latiendo\n era fuerte", "Decidí por fín matarlo\n el viejo se resitió pero lo logré.\n No sabia que hacer con el cuerpo", 
  "Luego de esconder el cuerpo escucho\n que tocan la puerta,\n eran los policias", "Los vecinos los habian llamado porque\n habian escuchado gritos.\n Investigan la casa pero no\n encuentran nada", "Comienzo a escuhar el latido\n del corazón, seguro ellos tambien.\n Deben saber que yo lo mate", 
  "Confieso mi asesinato.\n Me detienen.", "Me arrepiento, ese hombre es muy bueno conmigo,\n es solo su ojo lo que me molesta", "El viejo sin saber quien era el\n que estaba allí adquiere coraje\n y me mata", 
  "Luego de enterrar el cuerpo escucho\n que tocan la puerta, eran los policias.\n Los vecinos habian llamado porque\n habian escuchado gritos", "Investigan la casa, no\n encuentran nada pero los\n perros huelen algo en el patio", "Los perros encontraron el cuerpo en el patio.\n Me detienen", 
  "Los policias se terminan yendo.\n No sospecharon nada de mi.", "Creditos", "Comenzar", "Aprovechar y atacarlo igualmente", "Esperar a que lo abra", "Retirarse, me asusté", "Quedarse y seguir abriendo la puerta", "Disculparse, inventar una excusa e irse", "Esperar pretificado por una hora", "Seguir esperando", 
  "Iluminar de nuevo", "Atacar", "Enterrarlo en el patio", "Esconderlo debajo del suelo", "Continuar", "Hacer como si nada pasara", "Confesar", "Inicio", "Corazón Delator", "Autor: Edgard Alan Poe\n Trabajo Práctico n°4\n Comisión: n°1\n Alumna: Maria Bernarda Guanuco\n Legajo: 88153/4", "Presioná derecha para salir"};

void setup () {
  size (400, 500);
  Titulo = loadFont ("Chiller-Regular-48.vlw");
  Textos = loadFont ("BodoniMTPosterCompressed-35.vlw");
  Avisos = loadFont ("Consolas-Bold-30.vlw");
  py= height;
  for (int i=0; i<fotos.length; i++) {
    fotos [i] = loadImage ("foto" +i+ ".jpg");
  }
  for (int i=0; i<linea.length; i++) {
    println (linea [i]);
  }
}

void draw () {
  if (pantalla ==1) { //---------------------------------------------------PORTADA
    Fondo (0, Titulo, 255, 60, 35, width/2, 170);
    Botones (50, 400, 100, 50, "Left", 100, 395, 18, 100, 437);
    Botones (250, 400, 100, 50, "Right", 300, 395, 19, 302, 437);
  } else if (pantalla==0) { //---------------------------------------------CREDITOS
    Fondo (18, Textos, 255, 30, 36, width/2, py+170);
    fill (255);
    textFont (Titulo);
    text ("Corazón Delator", width/2, py+100);
    Botones (50, 400, 300, 50, "Right", 80, 470, 37, 200, 437);
    if (py==height);
    py--;
  } else if (pantalla==2) { //----------------------------------------------INICIO
    Fondo (1, Textos, 150, 30, 0, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 31, 302, 437);
  } else if (pantalla==3) { //----------------------------------------------IDEA DE MATAR 
    Fondo (2, Textos, 150, 30, 1, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 31, 302, 437);
  } else if (pantalla==4) { //----------------------------------------------MODO DE OPERAR 
    Fondo (3, Textos, 150, 30, 2, width/2, 50);
    Botones (50, 300, 300, 50, "Up", width/2, 290, 20, width/2, 337); 
    Botones (50, 400, 300, 50, "Down", width/2, 390, 21, width/2, 437);
  } else if (pantalla==5) { // ---------------------------------------------OCTAVA NOCHE
    Fondo (4, Textos, 255, 30, 3, width/2, 50);
    Botones (50, 300, 300, 50, "Up", width/2, 290, 22, width/2, 337); 
    Botones (50, 400, 300, 50, "Down", width/2, 390, 23, width/2, 437);
  } else if (pantalla==6) {//-----------------------------------------------VIEJO GRITA
    Fondo (5, Textos, 150, 30, 4, 70, 50);
    Botones (50, 300, 300, 50, "Up", width/2, 290, 24, width/2, 337); 
    Botones (50, 400, 300, 50, "Down", width/2, 390, 25, width/2, 437);
  } else if (pantalla==7) {//-----------------------------------------------DECISION
    Fondo (13, Textos, 255, 30, 5, width/2, 50);
    Botones (50, 300, 300, 50, "Up", width/2, 290, 26, width/2, 337); 
    Botones (50, 400, 300, 50, "Down", width/2, 390, 27, width/2, 437);
  } else if (pantalla==8) { //----------------------------------------------LATIDO DE CORAZÓN
    Fondo (6, Textos, 150, 30, 6, width/2, 50);
    Botones (50, 300, 300, 50, "Up", width/2, 290, 26, width/2, 337); 
    Botones (50, 400, 300, 50, "Down", width/2, 390, 28, width/2, 437);
  } else if (pantalla==9) {//-----------------------------------------------MATAMOS
    Fondo (7, Textos, 0, 30, 7, width/2, 50);
    Botones (50, 300, 300, 50, "Up", width/2, 290, 29, width/2, 337); 
    Botones (50, 400, 300, 50, "Down", width/2, 390, 30, width/2, 437);
  } else if (pantalla==10) {//----------------------------------------------ESCONDER EL CUERPO EN LA CASA
    Fondo (8, Textos, 150, 30, 8, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 31, 302, 437);
  } else if (pantalla==11) { //---------------------------------------------LLEGAN LOS POLICIAS
    Fondo (9, Textos, 150, 30, 9, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 31, 302, 437);
  } else if (pantalla==12) {//----------------------------------------------ESCUCHO QUE LATE EL CORAZÓN
    Fondo (10, Textos, 150, 30, 10, width/2, 50);
    Botones (50, 300, 300, 50, "Up", width/2, 290, 32, width/2, 337); 
    Botones (50, 400, 300, 50, "Down", width/2, 390, 33, width/2, 437);
  } else if (pantalla==13) {//----------------------------------------------CONFIESO
    Fondo (14, Textos, 255, 30, 11, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 34, 302, 437);
  } else if (pantalla==14) {//----------------------------------------------ARREPENTIMIENTO
    Fondo (11, Textos, 255, 30, 12, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 34, 302, 437);
  } else if (pantalla==15) {//----------------------------------------------VIEJO ME MATA
    Fondo (16, Textos, 255, 30, 13, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 34, 302, 437);
  } else if (pantalla==16) {//----------------------------------------------LLEGAN LOS POLICAS 2
    Fondo (12, Textos, 255, 30, 14, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 31, 302, 437);
  } else if (pantalla==17) {//----------------------------------------------PERROS HUELEN
    Fondo (9, Textos, 150, 30, 15, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 31, 302, 437);
  } else if (pantalla==18) {//----------------------------------------------ME DETIENEN
    Fondo (17, Textos, 255, 30, 16, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 34, 302, 437);
  } else if (pantalla==19) {//----------------------------------------------POLICIAS SE VAN
    Fondo (15, Textos, 255, 30, 17, width/2, 50);
    Botones (250, 400, 100, 50, "Right", 300, 395, 34, 302, 437);
  }
}

void keyPressed () {
  if (keyCode==LEFT && pantalla==1) {
    pantalla=0;
  } else if (keyCode==RIGHT && pantalla==0 ||pantalla==13 ||pantalla==14 ||pantalla==15 ||pantalla==18 ||pantalla==19) {
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
  } else if (keyCode==DOWN && pantalla==7) {
    pantalla=8;
  } else if (keyCode==DOWN && pantalla==8) {
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
  } else if (keyCode==UP && pantalla==5 || pantalla ==6) {
    pantalla=14;
  } else if (keyCode==UP && pantalla==7 || pantalla==8) {
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
