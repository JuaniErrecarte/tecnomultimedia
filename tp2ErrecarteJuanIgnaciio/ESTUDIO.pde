void ESTUDIO ( int posicionX) {

  strokeWeight(2);


  fill(#F7D2B4);
  triangle(posicionX, 210, posicionX+337, 300, posicionX, 390);

  fill(255, 0, 0);
  triangle(posicionX+14, 220, posicionX+329, 300, posicionX+14, 300);

  fill(255, 255, 255);
  triangle(posicionX+14, 380, posicionX+329, 300, posicionX+14, 300);


  beginShape(QUADS);
  vertex(posicionX+4, 218);
  vertex(posicionX+14, 220);
  vertex(posicionX+14, 300);
  vertex(posicionX+4, 300);
  endShape();



  fill(255, 0, 0);
  beginShape(QUADS);
  vertex(posicionX+4, 300);
  vertex(posicionX+14, 300);
  vertex(posicionX+14, 380);
  vertex(posicionX+4, 382);
  endShape();

  fill(0, 0, 0);
  textSize(75);
  text("E", posicionX+39, 322);
}
