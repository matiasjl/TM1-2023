
// fila de rectangulos

int t, m;
boolean debug = false;

void setup() {
  size( 600, 600 );
  textSize( 20 );
  noStroke();
  rectMode( CENTER );

  m = 20 ;  // cantidad de cuadrados a dibujar
  t = width / m ;  //tamaño de cada cuadrado  // 60
}

void draw() {
  background( 50 );

  for ( int i = 0; i < m; i++ ) {
    for ( int j = 0; j < m; j++ ) {
      //modificacion de tamanio
      float t2 = map( (i+j), 0, (m*2), 0, t );
      float distAlCentro = dist( i*t + t/2, j*t + t/2, width/2, height/2 );
      
      if ( (i+j)%2 == 0 ) {  //modulo% devuelve el resta de una división: 0 par, 1 impar
      //if ( i > j ) {  //diagonal descendente
      //if ( i == j ) {  //diagonal descendente sola
      //if ( i != j ) {  //todo menos la diagonal descendente sola
        fill( 0 );
        rect( i*t + t/2, j*t + t/2, t2, t2 );
      } else {
        fill( distAlCentro );
        ellipse( i*t + t/2, j*t + t/2, t-t2, t-t2 );
      }
      
      //modo debug
      if( debug ){
        fill( 200, 0, 0 );
        text( i + " / " + j, i*t+t/4, j*t+t/2 );
      }
    }
  }
  
}

void mouseMoved() {
  //m = round( mouseX/10 ) + 1;
  //t = width / m ;
}

void keyPressed(){
  if( key == ' ' )
    debug = !debug;  //si es true sea false, y si es false sea true
}
