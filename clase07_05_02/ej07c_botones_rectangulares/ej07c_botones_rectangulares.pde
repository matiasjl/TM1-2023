
// botones rentangulares -> determinar una zona rectangular
//
/*
  OPERADORES LOGICOS
 
 && == AND (sumar condiciones)
 || == OR  (una condicion o la otra)
 !  == NOT (lo contrario de la condicion)
 
 */

boolean estoyDentroDelRect = true;
float x, y, ancho, alto;
color bg = color(0);

void setup() {
  size( 400, 400 );

  x = 100;
  y = 200;
  ancho = 150;
  alto = 50;
}

void draw() {
  background( bg );

  //
  estoyDentroDelRect = ( mouseX > x ) && ( mouseX < x+ancho ) && ( mouseY > y) && ( mouseY < y+alto);
  //

  //estado mouseOver del boton rectangular
  if ( estoyDentroDelRect ) {
    fill( 100 );
  } else {
    fill( 200 );
  }
  noStroke();
  rect( x, y, ancho, alto );

  //debug
  stroke( 200, 0, 0 );
  line( mouseX, 0, mouseX, height );
  line( 0, mouseY, width, mouseY );
}

void mousePressed() {
  //if( estoyDentroDelRect ){
  if ( ( mouseX > x ) && ( mouseX < x+ancho ) && ( mouseY > y) && ( mouseY < y+alto) ) {
    bg = color( 0, random(100, 200), 0 );  //tonos de verde random
  }
}
