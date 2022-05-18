int posX, posY;
int  posImagen11, posImagen0, posImagen1, posImagen2, posImagen3, posImagen4, posImagen5, posImagen6;
PImage imagen11, imagen0, imagen1, imagen2, imagen3, imagen4, imagen5, imagen6;
PFont  fuenteDeTextoAlejoYValentina;
boolean  BOTON;
void setup () {

  posX = 0;
  posY = 1;
  size(800, 600);
  textSize(65);

  BOTON= false;
  fuenteDeTextoAlejoYValentina = loadFont("fuentetpayv.vlw");

  imagen11= loadImage("alejoYvalentinaFIRST.png");
  imagen0= loadImage("Alejo_y_Valentina.png");
  imagen1= loadImage("alejoYvalentina.jpg");
  imagen2= loadImage("carlitox.png");
  imagen3= loadImage("elale.jpg");
  imagen4= loadImage("elviejo.png");

  posImagen11= 10;
  posImagen0= 580;
  posImagen1=601;
  posImagen2=1250;
  posImagen3= 1801;
  posImagen4= 2401;
}

void draw() {
  rectMode(CENTER);
  strokeWeight(5);
  fill(255, 60, 60);
  rect(400, 300, 200, 100);
  
  if ((mouseX<500 && mouseX>300 && mouseY<400 && mouseY<300 && mousePressed) || BOTON==true) {
    
    BOTON = true;


    textFont(fuenteDeTextoAlejoYValentina, 49);
    background(30, 255, 30, 30);
    fill(0, 0, 255);

    image(imagen11, 50, posImagen11);
    posImagen11--;




    image(imagen1, posX, posImagen1);
    posImagen1= posImagen1-1;

    fill(0);
    textSize(82);
    text("Alejo Y Valentina", 65, posImagen0-10);
    textSize(80);
    fill(255);
    text("Alejo Y Valentina", 75, posImagen0-10);
    posImagen0--;

    textSize(51);
    fill(0);
    text("Personajes principales:\n Alejo \n Valentina", 22, posImagen1-1+250);
    fill(255);
    textSize(49);
    text("Personajes principales:\n Alejo \n Valentina", 32, posImagen1-1+250);
    noFill();
    line(0, posImagen1, 800, posImagen1);

    image(imagen2, 500, posImagen2+100);
    posImagen2= posImagen2-1;  

    fill(0);
    textSize(40);
    text("Personajes secundarios: \n Carlitox  \n El viejo de baston \n Gregory \n El Negro Trípode  \nMatías Walterland \n Ricardo Gutiérrez", 30, posImagen2+40);
    line(0, posImagen2-50, 800, posImagen2-50);

    image(imagen3, 150, posImagen3+50);
    textSize(30);
    fill(0);
    text("Directed by: Adrián Peralta ", 20, posImagen3);
    text("Todas las voces interpretadas por: Alejandro Szykula", 20, posImagen3+30);
    strokeWeight(5);
    line(0, posImagen3-50, 800, posImagen3-50);
 posImagen3--;

    image(imagen4, 150, posImagen4);
    line(0, posImagen4-100, 800, posImagen4-100);
    posImagen4--;

    if (posImagen4<10) {
      posImagen4=10;
    }
    line(0, posImagen4+570, 800, posImagen4+570);
  }
}
