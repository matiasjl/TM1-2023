
//condicionales1: if en keyPressed + limit animacion (comparadores)
//condicionales2: rebotes (logo dvd) + else
//condicionales3: módulo % para animar + porcentaje probabilidad random

//condicionales4: botones en mousePressed + dist + operadores
//condicionales5: logica de estados + swithc

//char r = 'r';  //en este caso es innecesario

color bg;

void setup() { //CUANDO: una sola vez cuando se ejecuta el programa
  textAlign(CENTER, CENTER);
  textSize( 50 );

  bg = color(200, 200, 200);
}

void draw() {  //CUANDO: 60 veces por segundo (promedio variable) despues del setup
  background( bg );
  text( key, 50, 50 );
  if( keyPressed ){
    //some code here
  }
}

void keyPressed() {  //CUANDO: se presiona cualquier tecla del teclado
  if ( key == 'r' ) {
    //background(200,0,0);
    bg = color(200, 0, 0);
  }
  if ( key == 'g' ) {
    //background(0,200,0);
    bg = color(0, 200, 0);
  }
  if ( key == 'b' ) {
    //background(0,0,200);
    bg = color(0, 0, 200);
  }
  println( key );
}

void mousePressed() {  //CUANDO: se presiona cualquier boton del mouse
  //println(mouseButton);
  if( mouseButton == LEFT ){
    bg = color( 0 );
  }
  if( mouseButton == RIGHT ){
    bg = color( 255 );
  }
  println( LEFT );
}
