/*
TP #2: Animación de creditos.

  ALUMNA: María Bernarda Guanuco
  SERIE: Sailor Moon
*/

PImage portada, portada2, gato, portadaFin;
PFont miTitulo, titulos, enter ;
boolean seMueve, entra, seMueve2;
float tamTit, pxImag2;
float pxGato1, pyGato1, pxGato2, pyGato2, pxGato3, pyGato3, pxGato4, pyGato4, pxGato5, pyGato5; // Posiciones en eje x, y de la imagen "gato".
float pyTitulo, pyTitulo2, pyTitulo3, pyTitulo4, pyTitulo5; // Posicion en y de los titulos.


void setup () {
  size (500,375);
  
  // -     -    -   -   -   -   -   -   -    Subida de imagenes y fuentes.
  portada = loadImage ("fondo_nubes.png");
  gato = loadImage ("luna_png.png");
  portada2 = loadImage ("fondo_2.png");
  portadaFin = loadImage ("fondo_cielo.png");
  
  miTitulo = loadFont ("HarlowSolid-70.vlw");
  titulos= loadFont ("titulos.vlw");
  enter = loadFont ("Consolas-15.vlw");
  
  seMueve = true;
  entra = true;
  seMueve2 = true ;
  
  tamTit = 30;
  pxImag2 = 500;
  
  // -   -    -     -   -   - Posiciones en eje y de los titulos
  pyTitulo = 375;
  pyTitulo2 = 375;
  pyTitulo3 = 375;
  pyTitulo4 = 375;
  pyTitulo5 = 375;
 
 //-   -   -   -   -   -    - Posiciones en eje x de la imagen "gato".
  pxGato1 = random (10, 75);
  pxGato2 = random (400,450);
  pxGato3 = random (10, 75);
  pxGato4 = random (400,450);
  pxGato5 = random (0,75);
  
 // -  -   -   -   -   -   -  Posiciones en eje y de la imagen "gato".
  pyGato1 = random (50,350);
  pyGato2 = random (50,350);
  pyGato3 = random (50,350);
  pyGato4 = random (50,350);
  pyGato5 = random (50,350);

}

void draw () {
  
  if (seMueve == true){
    image (portada,0,0, width, height);
    textFont (miTitulo);
    textAlign (CENTER);
    textSize (tamTit);
    text ("Sailor Moon", width/2, height/2);
    fill (255,235,3);
    tamTit = tamTit + 0.1;
  }
  
  if (tamTit > 55) {
    seMueve = false;
  }
  
  if (seMueve == false){
  textFont (enter);
  text ("Mantené la flecha izquierda presionada para comenzar", width/2, 300);
  }
  
  if (keyPressed){
    if (keyCode == LEFT && entra == true){
      imageMode (CORNER);
      image (portada2, pxImag2, 0, width, height);
      pxImag2 --;
    }
  }
  
  if (pxImag2 == 0){
    entra = false;
   }
   
  if (seMueve2==true && pxImag2==0 ) { 
    imageMode (CORNER);
    image (portada2, pxImag2, 0, width, height);
    imageMode (CENTER);
    image (gato, pxGato1, pyGato1, 458/7, 640/7);
    textFont (titulos);
    fill (255, 0, 107);
    textAlign (CENTER,TOP);
    text ("ARGUMENTO\n\n Naoko Takeuchi\n Basada en la historieta\n original Sailor Moon\n publicada por Kodanshan", width/2, pyTitulo); 
    pyTitulo --;
  }
  
 if (frameCount > 20*60){ 
    image (gato, pxGato2, pyGato2, 458/7, 640/7);
    text ("PRODUCTOR\n\n Irima Azuma\n\n\n MANAGER DE PRDUCCIÓN\n\n Munehisa Higuchi\n Nakayoshi (Kodansha Publishing)", width/2, pyTitulo2); 
    pyTitulo2--;
 } 
 
 if (frameCount > 28*60){
   image (gato, pxGato3, pyGato3, 458/7, 640/7);
   text ("CANCION DE OPENING\n\n Moonlight Densetsu \n\n\n\n CANCION DE ENDING\n\n Heart Moving", width/2, pyTitulo3); 
   pyTitulo3 --;
 }  
 
 if (frameCount > 35*60){
   image (gato, pxGato4, pyGato4, 458/7, 640/7);
   textAlign (CORNER);
   text ("         PERSONAJES PRINCIPALES\n\n Serena Tsuniko     Patricia Acevedo\n Amy Mizuno          Rossy Aguirre\n Rei Hino                  Monica Manjarez\n Lita Kino                  Araceli León\n Mina Aino              Maria Fernanda Morales\n Darien Chiba        Genero Vásquez\n Luna                        Keiko Han\n Artemis                   Yasuhiro Takato", 70, pyTitulo4); 
   pyTitulo4 --;
 }
   
  if (frameCount > 42*60){
  image (gato, pxGato5, pyGato5, 458/7, 640/7);
  textAlign (CORNER);
  text ("         PERSONAJES SECUNDARIOS\n\n Molly Osaka            Cristina Camargo\n Kelvin Taylor             Genaro Váquez\n Ikuko Tsukino           Alejandra de la Rosa\n Kenji Tsuniko            Carlos Becerril\n Nicolas Kumada     Sergio Gutíerrez Coto", 70, pyTitulo5); 
  pyTitulo5 --;
 }
 
 if (frameCount> 48 *60){
  imageMode (CORNER);
  image (portadaFin,0,0 ,width, height);
  textFont(miTitulo);
  textAlign (CENTER);
  text ("Fin", width/2, height/2);
  pyTitulo--;
 }
  println (frameCount);
  println (mouseX, mouseY);
  }
