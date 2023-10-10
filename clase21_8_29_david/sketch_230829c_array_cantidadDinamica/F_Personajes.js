function inicializarPersonaje() {
  xP = width/2;
  yP = height/2;
  rP = 30;
  velP = 2;
}

function actualizarPersonaje() {
  moverPersonaje();
  dibujarPersonaje();
}

function moverPersonaje() {
  //asignacion directa:
  /*
  xP = mouseX;
  yP = mouseY;
  */
  
  //por comparacion:
  /*
  if ( xP<mouseX ) {
    xP+=velP;
  }
  if ( xP>mouseX ) {
    xP-=velP;
  }
  if ( yP<mouseY ) {
    yP+=velP;
  }
  if ( yP>mouseY ) {
    yP-=velP;
  }
  */
  
  //por aproximacion:
  xP+= (mouseX-xP)*0.05;
  yP+= (mouseY-yP)*0.05;
}

function dibujarPersonaje() {
  push();
  translate(xP, yP);
  fill(255, 250, 0);
  ellipse(0, 0, rP*2, rP*2);
  pop();
}
