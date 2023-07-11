
// matriz con booleanas (array de 2 dimensiones)

int c = 8;
int tamCelda;
boolean[][] encendido = new boolean[c][c];  //8x8 = 64 "celdas" en total

boolean debug = true;

void setup() {  //SE INICIALIZA LAS VARIABLES

  size( 600, 600 );
  textAlign( CENTER, CENTER );
  textSize( 32 );

  //inicializo todas las posiciones del arreglo en FALSE
  for ( int i = 0; i < c; i ++ ) {
    for ( int j = 0; j < c; j++ ) {
      encendido[i][j] = false;
    }
  }
  encendido[0][0] = true;
  encendido[3][6] = true;
  encendido[6][2] = true;

  tamCelda = width / c;  //75
}

void draw() {  //SE DIBUJA EN PANTALLA

  //dibujo mi grilla de 8x8 celdas
  for ( int i = 0; i < c; i ++ ) {
    for ( int j = 0; j < c; j++ ) {
      if ( encendido[i][j] ) {
        fill( 0 );
      } else {
        fill( 200 );
      }
      rect( i*tamCelda, j*tamCelda, tamCelda, tamCelda );
      //
      if ( debug ){
        fill( 255 );
        text( i + " / " + j, i*tamCelda+35, j*tamCelda+30 );
      }
    }
  }
}

void mousePressed() {  //SE CALCULAN LOS BOTONES
  //recorro las 65 posiciones de mi matrix
  for ( int i = 0; i < c; i ++ ) {
    for ( int j = 0; j < c; j++ ) {
      //boton cuadrado
      if ( mouseX > i*tamCelda && mouseX < i*tamCelda+tamCelda &&
           mouseY > j*tamCelda && mouseY < j*tamCelda+tamCelda ) {
             //lo que haga el boton
             encendido[i][j] = !encendido[i][j];
      }
    }
  }
}

void keyPressed(){
  if( key == ' ' ){
    debug = !debug;
  }
}
