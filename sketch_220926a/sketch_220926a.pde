//link de video: https://youtu.be/w6khMZWiohs

cara pelon;
String estado;
boolean apretado;

void setup() {
  size(800, 600);
  pelon = new cara (200, 110);
  estado = "pantalla1";
  apretado = false;
  textAlign(CENTER);
}



void draw() {



  if ( estado.equals("pantalla1")) {
    background(0);
    textSize(35);
    text("TOCA LA BARRA ESPACIADORA TIBIO", 400,50);
    pelon.dibujoCara(250, 110);
    if (keyPressed) {
      if (key == ' ') {
        apretado = true;
      }                   
      if (apretado == true) {
        estado = "pantalla2";
      }
    }
  }
  if (estado.equals("pantalla2" ) && apretado == true) { 
    background(255, 0, 0);   
    
    text ("ESTUDIOO", 400, 50);
    pelon.dibujoCara(250, 110);
    pelon.lentes.dibujarAnteojos(200, 50);    
    pelon.fasito.dibujarFaso(150, 340);  
  }
}
