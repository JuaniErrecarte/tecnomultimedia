controlGame juego;
import processing.sound.*;
SoundFile fileEffect;
void setup(){
  size(800,600);
juego = new controlGame();
 fileEffect = new SoundFile(this, "hinchadaTudion.mp3"); 
 
}



void draw(){
juego.control();

}
