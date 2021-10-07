void Botones1 (){ // Izquierda
fill (100,0,0);
rect (50,400,100,50);
textFont (Avisos);
fill (100,0,0);
textSize (18);
text ("Left",100,395);
textFont (Textos);
fill (255);
}

void Botones2 (){ // Derecha
fill (100,0,0);
rect (250,400,100,50);
textFont (Avisos);
fill (100,0,0);
textSize (18);
text ("Right", 300,395);
textFont (Textos);
fill (255);
}

void BotonesHistoria (){
 textFont (Avisos);
 fill (100,0,0);
 textSize (18);
 text ("Up", width/2, 290);
 text ("Down", width/2,390);
 textFont (Textos);
 textSize (30);
 fill (100,0,0);
 rect (50,300,300,50);
 rect (50,400, 300,50);
 fill (255);
}

void Textos (){
   textFont (Textos);
   textSize (30);
   fill (150);
}
