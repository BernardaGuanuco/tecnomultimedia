/*
Tecnologia Multimedial 2021
 TP 4°: Aventura Gráfica
 Comisión: 1, José Luís Bugiolachi
 Alumna: María Bernarda Guanuco
 Legajo: 88153/4
 Historia: Corazón Delator
 Autor: Edgar Alan Poe
 URL Video: 
 */

PImage [] fotos = new PImage [18];
PFont Titulo, Textos, Avisos;
int pantalla =1;
int py;

void setup () {
  size (400, 500);
  Titulo = loadFont ("Chiller-Regular-48.vlw");
  Textos = loadFont ("BodoniMTPosterCompressed-35.vlw");
  Avisos = loadFont ("Consolas-Bold-30.vlw");
  py= height;

  for (int i=0; i<fotos.length; i++) {
    fotos [i] = loadImage ("foto" +i+ ".jpg");
  }}

void draw () {

  if (pantalla ==1) { //-------------------------------------------PORTADA
    image (fotos[0], 0, 0, width, height);
    fill(0);
    rect (0, 120, width, 70);
    fill (255);
    textFont (Titulo);
    textAlign (CENTER);
    text ("Corazón Delator", width/2, 170);
    Botones1 ();
    text ("Creditos", 100, 437);
    Botones2 ();
    text ("Comenzar", 302, 437);
    
  } else if (pantalla==0) { //------------------------------------CREDITOS
    background (100, 0, 0);
    textAlign (CENTER);
    textFont (Avisos);
    textSize (14);
    fill (0);
    text ("Presioná derecha para salir", width/2, py);
    text ("Presioná derecha para salir", width/2, py+420);
    fill (255);
    textFont (Titulo);
    text ("Corazón Delator", width/2, py+100);
    textFont (Textos);
    fill (0);
    text ("Autor: Edgard Alan Poe \n Trabajo Práctico n°4 \n Comisión: n°1 \n Alumna: Maria Bernarda Guanuco \n Legajo: 88153/4 ", width/2, py+170);
    if (py==height);
    py--;
    
  } else if (pantalla==2) { //------------------------------------INICIO
    image(fotos [1], 0, 0, width, height);
    Textos ();
    text ("Yo amaba al buen anciano, \n pero tenia algo en desagradable. \n Era uno de sus ojos", width/2, 50);
    Botones2();
    text ("Continuar", 302, 437);
  } else if (pantalla==3) { //-----------------------------------IDEA DE MATAR 
    image (fotos [2], 0, 0, width, height);
    Textos ();
    text ("Cada vez que ese ojo se fijaba en mi mirada \n se me helaba la sangre. \n Lentamente comenzó a germinar en mi \n la idea de terminar con su vida", width/2, 50);
    Botones2 ();
    text ("Continuar", 302, 437);
  } else if (pantalla==4) { //-----------------------------------MODO DE OPERAR 
    image (fotos [3], 0, 0, width, height);
    Textos ();
    text ("Todas las noches abria la puerta suavemente,\n introducia mi cabeza y una linterna.\n Luego iluminaba con un imperceptible \n rayo de luz el ojo de buitre. \n Pero siempre este estaba cerrado.", width/2, 50);
    BotonesHistoria();
    text ("Aprovechar y atacarlo igualmente", width/2, 337);
    text ("Esperar a que lo abra", width/2, 437); 
  } else if (pantalla==5) { // -----------------------------------OCTAVA NOCHE
    image (fotos [4], 0, 0, width, height);
    Textos ();
    fill (255);
    text ("La octava noche que intenté, \n el viejo se despertó por mi carcajada", width/2, 50);
    BotonesHistoria();
    text ("Retirarse, me asusté", width/2, 337);
    text ("Quedarse y seguir abriendo la puerta", width/2, 437);
  } else if (pantalla==6) {//---------------------------------------VIEJO GRITA
    image (fotos [5], 0, 0, width, height);
    Textos ();
    text ("Viejo exclama:\n Quien anda ahí", 70, 50);
    BotonesHistoria();
    text ("Disculparse, inventar una excusa e irse", width/2, 337);
    text ("Esperar pretificado por una hora", width/2, 437);
  } else if (pantalla==7) {//-----------------------------------------DECISION
    image (fotos [13], 0, 0, width, height);
    Textos (); 
    fill (255);
    text ("Ya no aguantaba mas,\n pero queria hacer bien mi trabajo", width/2, 50);
    BotonesHistoria();
    text ("Seguir esperando", width/2, 337);
    text ("Iluminar de nuevo", width/2, 437);
  } else if (pantalla==8) { //----------------------------------------LATIDO DE CORAZÓN
    image (fotos [6], 0, 0, width, height);
    Textos ();
    text ("El ojo del viejo estaba\n completamente abierto y el \n sonido de su corazon latiendo\n era fuerte", width/2, 50);
    BotonesHistoria();
    text ("Seguir esperando", width/2, 337);
    text ("Atacar", width/2, 437);
  } else if (pantalla==9) {//------------------------------------------MATAMOS
    image (fotos [7], 0, 0, width, height);
    Textos ();
    fill (0);
    text ("Decidí por fín matarlo\n el viejo se resitió pero lo logré.\n No sabia que hacer con el cuerpo", width/2, 50);
    BotonesHistoria();
    text ("Enterrarlo en el patio", width/2, 337);
    text ("Esconderlo debajo del suelo ", width/2, 437);
  } else if (pantalla==10) {//-----------------------------------------ESCONDER EL CUERPO EN LA CASA
    image (fotos [8], 0, 0, width, height);
    Textos ();
    text ("Luego de esconder el cuerpo escucho\n que tocan la puerta,\n eran los policias", width/2, 50);
    Botones2();
    text ("Continuar", 302, 437);
  } else if (pantalla==11) { //-----------------------------------------LLEGAN LOS POLICIAS
    image (fotos [9], 0, 0, width, height);
    Textos ();
    text ("Los vecinos los habian llamado porque\n habian escuchado gritos.\n Investigan la casa pero no\n encuentran nada", width/2, 50);
    Botones2();
    text ("Continuar", 302, 437);
  } else if (pantalla==12) {//-------------------------------------------ESCUCHO QUE LATE EL CORAZÓN
    image (fotos [10], 0, 0, width, height);
    Textos ();
    text ("Comienzo a escuhar el latido\n del corazón, seguro ellos tambien.\n Deben saber que yo lo mate", width/2, 50);
    BotonesHistoria();
    text ("Hacer como si nada pasara", width/2, 337);
    text ("Confesar", width/2, 437);
  } else if (pantalla==13) {//-------------------------------------------CONFIESO
    image (fotos [14], 0, 0, width, height);
    Textos ();
    fill (255);
    text ("Confieso mi asesinato.\n Me detienen.", width/2, 50);
    Botones2();
    text ("Inicio", 302, 437);
  } else if (pantalla==14) {//--------------------------------------------ARREPENTIMIENTO
    image (fotos [11], 0, 0, width, height);
    Textos ();
    text ("Me arrepiento, ese hombre es muy bueno conmigo,\n es solo su ojo lo que me molesta", width/2, 50);
    Botones2();
    text ("Inicio", 302, 437);
  } else if (pantalla==15) {//---------------------------------------------VIEJO ME MATA
    image (fotos [16], 0, 0, width, height);
    Textos ();
    text ("El viejo sin saber quien era el\n que estaba allí adquiere coraje\n y me mata", width/2, 50);
    Botones2();
    text ("Incio", 302, 437);
  } else if (pantalla==16) {//---------------------------------------------LLEGAN LOS POLICAS 2
    image (fotos [12], 0, 0, width, height);
    Textos ();
    fill (255);
    text ("Luego de enterrar el cuerpo escucho\n que tocan la puerta, eran los policias. \n Los vecinos habian llamado porque\n habian escuchado gritos", width/2, 50);
    Botones2();
    text ("Continuar", 302, 437);
  } else if (pantalla==17) {//---------------------------------------------PERROS HUELEN
    image (fotos [9], 0, 0, width, height);
    Textos ();
    text ("Investigan la casa, no\n encuentran nada pero los\n perros huelen algo en el patio", width/2, 50);
    Botones2();
    text ("Continuar", 302, 437);
  } else if (pantalla==18) {//---------------------------------------------ME DETIENEN
    image (fotos [17], 0, 0, width, height);
    Textos ();
    fill (255);
    text ("Los perros encontraron el cuerpo en el patio.\n Me detienen", width/2, 50);
    Botones2();
    text ("Inicio", 302, 437);
  } else if (pantalla==19) {//----------------------------------------------POLICIAS SE VAN
    image (fotos [15], 0, 0, width, height);
    Textos ();
    text ("Los policias se terminan yendo.\n No sospecharon nada de mi.", width/2, 50);
    Botones2();
    text ("Inicio", 302, 437);
  }}

void keyPressed () {
  if (keyCode==LEFT && pantalla==1) {
    pantalla=0;
  } else if (keyCode==RIGHT && pantalla==0 ||pantalla==13 ||pantalla==14 ||pantalla==15 ||pantalla==18 ||pantalla==19) {
    pantalla =1;
  }else if (keyCode==RIGHT && pantalla==1){
     pantalla =2;
  }else if (keyCode==RIGHT && pantalla==2){
     pantalla=3;
  }else if (keyCode==RIGHT && pantalla==3){
     pantalla=4;
  }else if (keyCode==DOWN && pantalla==4){
     pantalla=5;
  }else if (keyCode==DOWN && pantalla==5){
     pantalla=6;
  }else if (keyCode==DOWN && pantalla==6){
     pantalla=7;
  }else if (keyCode==DOWN && pantalla==7){
     pantalla=8;
  }else if (keyCode==DOWN && pantalla==8){
     pantalla=9;
  }else if (keyCode==DOWN && pantalla==9){
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
}}
                                
