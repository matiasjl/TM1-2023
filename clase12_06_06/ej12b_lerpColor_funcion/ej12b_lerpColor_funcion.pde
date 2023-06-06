
//color c1, c2;
int m;

void setup() {
  size( 400, 400 );
  //noStroke();

  //c1 = color(255);  //blanco
  //c2 = color(0);  //negro

  m = width / 10;  //40
}

void draw() {
  background( 0 );
  
  rectDegradez( mouseX, mouseY, 100, 200, color(200, 56, 98), color(0, 70, 90) );
}


//   rectDegradez( x, y, ancho, alto, c1, c2 );
void rectDegradez( int x, int y, int a, int h, color c1, color c2) {
  for ( int i = x; i < x+a; i++ ) {  //maneja el ancho del "rect"

    float n = map( i, x, x+a, 0, 1 );
    color c = lerpColor( c1, c2, n );  //valor entre 0 y 1 = normalizado

    stroke( c );
    line( i, y, i, y+h );  //maneja el alto del "rect"
  }
}
