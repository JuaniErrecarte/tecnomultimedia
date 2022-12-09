class Enemigo {

  float posX, posY;
  PImage copas;

  Enemigo() {
  
    posY= random(-height,0) ;
    posX=random(5, width-10);
    copas= loadImage("copas.png");
  }

  void mostrar() {
     
   
    posY+=5;
    if(posY>height){
   posY= random(-height,0);
    posX=random(0, width-50);
    }
    image(copas, posX, posY, 80, 80);
  }
}
