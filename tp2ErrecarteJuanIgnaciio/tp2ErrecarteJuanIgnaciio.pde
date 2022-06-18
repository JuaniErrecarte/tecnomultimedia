//https://youtu.be/Ylk2LVRS_F0 es posible que se escuche bajito, subir volumen.

float tam, cantidad, colorParaLosCirculos, velX;

void setup() {

  size(800, 600);
  cantidad= 25;
  tam = width/cantidad;  
  colorParaLosCirculos= map(mouseX, 0, width, 0, 255);
  velX=1;
}


void draw() {
  background(0, 100);
  velX++;
  fill(255);
  textSize(30);
  text("Hold 'P' or 'p' to see circles",mouseX,150);



  if (keyPressed) {
    if (key == 'p' || key=='P') {
      for (float circulosX =0; circulosX <=velX; circulosX++ ) {
        for (float circulosY =0; circulosY<=cantidad; circulosY++) {
          fill(circulosX*255/30, 0, 0);
          ellipse( circulosX*tam, circulosY*tam, tam, tam);
        }
      }
    }
  }
  ESTUDIO(mouseX);
}
