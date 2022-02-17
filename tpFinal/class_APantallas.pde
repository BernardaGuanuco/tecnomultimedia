class Pantallas {
  PImage [] fotos = new PImage [19];
  PFont Textos, Avisos;
  String [] linea = {"Yo amaba al buen anciano,\n pero tenia algo en desagradable.\n Era uno de sus ojos", "Cada vez que ese ojo se fijaba en mi mirada\n se me helaba la sangre.\n Lentamente comenzó a germinar en mi \n la idea de terminar con su vida",
    "Todas las noches abria la puerta suavemente,\n introducia mi cabeza y una linterna.\n Luego iluminaba con un imperceptible\n rayo de luz el ojo de buitre.\n Pero siempre este estaba cerrado.", "La octava noche que intenté,\n el viejo se despertó por mi carcajada", "Viejo exclama:\n ¡Quien anda ahí!",
    "Ya no aguantaba mas,\n pero queria hacer bien mi trabajo", "El ojo del viejo estaba\n completamente abierto y el\n sonido de su corazon latiendo\n era fuerte", "Decidí por fín matarlo\n el viejo se resitió pero lo logré.\n No sabia que hacer con el cuerpo",
    "Luego de esconder el cuerpo escucho\n que tocan la puerta,\n eran los policias", "Los vecinos los habian llamado porque\n habian escuchado gritos.\n Investigan la casa pero no\n encuentran nada", "Comienzo a escuhar el latido\n del corazón, seguro ellos tambien.\n Deben saber que yo lo mate",
    "Confieso mi asesinato.\n Me detienen.", "Me arrepiento, ese hombre es muy bueno conmigo,\n es solo su ojo lo que me molesta", "El viejo sin saber quien era el\n que estaba allí adquiere coraje\n y me mata",
    "Luego de enterrar el cuerpo escucho\n que tocan la puerta, eran los policias.\n Los vecinos habian llamado porque\n habian escuchado gritos", "Investigan la casa, no\n encuentran nada pero los\n perros huelen algo en el patio", "Los perros encontraron el cuerpo en el patio.\n Me detienen",
    "Los policias se terminan yendo.\n No sospecharon nada de mi.", "Creditos", "Comenzar", "Aprovechar y atacarlo igualmente", "Esperar a que lo abra", "Retirarse, me asusté", "Quedarse y seguir abriendo la puerta", "Disculparse, inventar una excusa e irse", "Esperar pretificado por una hora", "Seguir esperando",
    "Iluminar de nuevo", "Atacar", "Enterrarlo en el patio", "Esconderlo debajo del suelo", "Continuar", "Hacer como si nada pasara", "Confesar", "Inicio", "Corazón Delator", "Autor: Edgard Alan Poe\n Trabajo Práctico n°4\n Comisión: n°1\n Alumna: Maria Bernarda Guanuco\n Legajo: 88153/4", "Presioná derecha para salir"};

  Pantallas () {
    Textos = loadFont ("BodoniMTPosterCompressed-35.vlw");
    Avisos = loadFont ("Consolas-Bold-30.vlw");
    for (int i=0; i<fotos.length; i++) {
      fotos [i] = loadImage ("foto" +i+ ".jpg");
    }
    for (int i=0; i<linea.length; i++) {
    }
  }

  void dibujarPantalla (int numPantalla, PFont fuente_, int fill, int tam, int numTexto, int pxT, int pyT ) {
    image (fotos [numPantalla], 0, 0, width, height);
    textFont (fuente_);
    fill (fill);
    textSize (tam);
    textAlign (CENTER);
    text (linea [numTexto], pxT, pyT);
  }

  void dibujarBotones (int px, int py, int tamx, int tamy, String texto, int pxT, int pyT, int numTexto, int pxT2, int pyT2) {
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
} 
