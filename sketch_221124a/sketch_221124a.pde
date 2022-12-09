//https://youtu.be/a6yX6qqyRW4 video de Errecarte Juan Ignacio
//https://youtu.be/OD4WfBNhqa4 video de Coste Ignacio


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
