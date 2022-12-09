class Pantallas {

  int tiempo=40, delayTiempo;
  String []textosDePantallas= new String[6];
  PImage inicio, fondo, fondoPerdiste, fondo2;
  PFont fuente1;
  float posXen, posYen, velocidad=0.1;
  Enemigo []enemigo;
  Pj personaje;

  Pantallas() {
    textosDePantallas[0]="¡ALERTA!";
    textosDePantallas[1]="Esquivá las copas para ganar";
    textosDePantallas[2]="Pulsa el botón para comenzar";
    textosDePantallas[3]="Perdiste";
    textosDePantallas[4]="Jugar otra vez";
    textosDePantallas[5]="0:" + tiempo;
    fondoPerdiste= loadImage("pantallaPerdiste.jpeg");
    fondo= loadImage("estadio.jpg");
    fondo2= loadImage("pantallaganaste.jpg");
    fuente1= loadFont("Raavi-48.vlw");    
    inicio= loadImage("inicio.jpg");
    enemigo=new Enemigo[7];
    personaje=new Pj(width/2, height-100);

    for (int enemigos=0; enemigos<7; enemigos++) {
      enemigo [enemigos] = new Enemigo();
    }
  }


  void inicio() {
    fill(255, 255, 0);
    textFont(fuente1);
    text(textosDePantallas[0], 400, 145);
    fill(255);
    textSize(32);
    text(textosDePantallas[1], 400, 190);
    pushStyle();
    image(inicio, 0, 0);
    if ( dist( mouseX, mouseY, width/2, height/2+100) <= 20 ) {
      strokeWeight(5);
      fill(255);
    } else {
      fill( 0 );
      strokeWeight(1);
    }
    
    textSize(25);
    text(textosDePantallas[2], 400, 325);
    ellipse( width/2, height/2+100, 40, 40 );
    popStyle();
  }


  void juego() {
  
    image(fondo, 0, 0, 800, 600);
    text("tiempo: "+ tiempo, width-70, 10);
    personaje.mostrar();
    if (tiempo<=0) {
      juego.estado="pantalla4";
    }
    delayTiempo=(delayTiempo+1)%60;

    if (delayTiempo==0) {
      tiempo=tiempo-1;
    }
    for (int enemigos=0; enemigos<7; enemigos++) {
      enemigo[enemigos].mostrar();
      if (dist(mouseX, 500, enemigo [enemigos].posX, enemigo [enemigos]. posY) <50) {
        juego.estado="pantalla3";
        posYen+=-100;
      }
    }
    posYen+=7;

    if (posYen <-70) {
      posXen=random(100, 200);
    }
    if (posYen>height+40) {
      posYen=-100;
    }
  }

  void perdiste() {

    text(textosDePantallas[4], 420, 300);   
    fill(255, 0, 0);
    
    pushStyle();
    image(fondoPerdiste, 0, 0, 800, 600);   
    if (mouseX<450 && mouseX>330 && mouseY<450 && mouseY>350) {
      strokeWeight(5);
      fill(0);
    } else {
      fill( 255, 0, 0 );
      strokeWeight(1);
    }
    textSize(25);
    text(textosDePantallas[2], 400, 325);
    rect( 330, 350, 120, 100 );

    popStyle();
    tiempo=40;
    if (mouseX<450 && mouseX>330 && mouseY<450 && mouseY>350 && mousePressed) {
      juego.estado="pantalla1";
    }
  }
  
  
  void ganaste() {
    image(fondo2, 0, 0, 800, 600);  
    fill(255, 0, 0);
    strokeWeight(10);
    pushStyle();
    fill(0);  
    popStyle();
     pushStyle();
    

    if (mouseX<470 && mouseX>360 && mouseY<480 && mouseY>380) {
      strokeWeight(5);
      fill(255,0,0);
      stroke(0);
    } else {
      fill(  0 );
      strokeWeight(5);
      stroke(255,0,0);
    }

    textSize(25);
    rect( 360, 380, 110, 100 );
    popStyle();
    tiempo=40;
      if (mouseX<460 && mouseX>350 && mouseY<450 && mouseY>350 && mousePressed) {
      juego.estado="pantalla1";
    }

 
    
  }
}
