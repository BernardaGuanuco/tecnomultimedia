/*
  Tp n° 3: Ilusión optica
  Alumna : María Bernarda Guanuco
  Legajo : 88153/4
  URL video: 
*/

int cant=20;
int tam;
int seCorre;
int tono ;

void setup (){
  size (600,600);
  tam = width/cant;
  tono = 0;
  strokeWeight(2);
  background (255);
  
}

void draw (){
  stroke (150);
 for (int py =0; py<cant; py++){
   for (int px =0; px<cant; px++){ 
    if (px%2==0){
      fill (255);
    }else {
      fill (tono);
      }  
    rect (px*tam -seCorre,py *tam,tam,tam);
      ellipseMode (CORNER);
      noFill ();
      ellipse (px*tam+ tam/3 -seCorre,py *tam+ tam/3,tam/3.5, tam/3.5);
      float borde = map (mouseX, 0, width, 0.5,7);
      strokeWeight (borde);
  }
  if (py%2==0){
    seCorre += 17;
  }else{
    seCorre -= 17;
  }

  }
  fill (200);
  noStroke ();
  rect (570,15,40,570);
  fill (0);
  text ("R", 580,height/2);

}
   
 void keyPressed (){
   if (keyPressed && (keyCode == RIGHT)){
   tono = color (255,0,0);
   }
   if (keyCode == LEFT){
   tono = color (0,0,255);
   }
   if (keyCode == UP){
   tono = color (0,255,0);
   }
   if (keyCode == DOWN){
   tono = color (255,0,255);
   }
   
 }
 void mousePressed (){
   if  (mouseX>= 570 && mouseY <= 570 && mouseY >15 ) {
    tono = 0;
   }
 }
 
      
      
 
 
