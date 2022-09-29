class cara {
  int posXCara, posYCara, posXanteojos, posXfaso;
  PImage VeronCara;
  anteojos lentes;
  faso fasito;


  cara(int posXCaraVeron, int posYCaraVeron) {
    posXCara= posXCaraVeron;
    posYCara=posYCaraVeron;
    VeronCara= loadImage("veron.jpg");
    lentes = new anteojos (posXanteojos, 100);
    fasito= new faso (posXfaso, 260);
    posXanteojos=-50;
    posXfaso=150;
  }
  void dibujoCara (int posXcara, int posYcara) {    
    image(VeronCara, posXcara, posYcara);
   /* lentes.dibujarAnteojos(200, 50);    
    fasito.dibujarFaso(posXfaso, 340);*/
  }
}
