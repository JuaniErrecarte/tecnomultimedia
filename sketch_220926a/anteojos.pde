class anteojos {
  int posXanteojos, posYanteojos;
  PImage anteojitos;

  anteojos (int posXanteojos2, int posYanteojos2) {
    posXanteojos=posXanteojos2;
    posYanteojos=posYanteojos2;
    anteojitos= loadImage("anteojos.png");
  }
 
  void dibujarAnteojos(int posXanteojos, int posYanteojos){
  image(anteojitos,posXanteojos,posYanteojos);
 
  }
 
}
