class faso{
int posXfaso,posYfaso;
PImage imagenFaso;


faso (int posXfaso1, int posYfaso1){
posXfaso= posXfaso1;
posYfaso= posYfaso1;
imagenFaso = loadImage("faso.png");

}

void dibujarFaso (int posXfaso,int posYfaso){
  image(imagenFaso, posXfaso, posYfaso);



}





}
