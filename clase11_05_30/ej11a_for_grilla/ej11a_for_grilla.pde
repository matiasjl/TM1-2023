
// fila de rectangulos

int t, m;

void setup() {
  size( 600, 600 );
  textSize( 20 );

  m = 10 ;  // cantidad de cuadrados a dibujar
  t = width / m ;  //tamaño de cada cuadrado  // 60
}

void draw() {
  background( 100 );

  for ( int i = 0; i < m; i++ ) {
    for ( int j = 0; j < m; j++ ) {
      if ( (i+j)%2 == 0 ) {  //modulo% devuelve el resta de una división: 0 par, 1 impar
        fill( 0 );
      } else {
        fill( 255 );
      }
      rect( i*t, j*t, t, t );
      fill( 200, 0, 0 );
      text( i + " / " + j, i*t+t/4, j*t+t/2 );
    }
  }
}

void mouseMoved() {
  //m = round( mouseX/10 ) + 1;
  //t = width / m ;
}
