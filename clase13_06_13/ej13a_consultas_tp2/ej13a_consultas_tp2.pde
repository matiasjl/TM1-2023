
// consulta tp2 - martes 13 junio

// bianca: cambiar color fondo con teclado --> OK
// agustina: funciones que NO retornan valor (VOID) --> OK
// rellenar una figura en for + anidado  -> OK
// retornan valor -> una cuenta sencilla que se repita --> OK
// evitar color random-total: ¿paletas? --> OK
// circulos que se achican y se agranden segun mouse --> OK
// frameRate --> OK
// ¿como dibujar en la mitad derecha de la pantalla? --> OK
// resetear el programa, ergo, volver las variables al valor INICIAL --> OK

color bg;  //color de fondo
int t;  //tamaño circulos

void setup() {
  size( 800, 400 );  //el area donde uds tienen que dibujar es de (400,0) en adelante

  //presets de estilos
  noStroke();
  noCursor();  //esconde el cursor del mouse
  rectMode( CENTER );

  //definir valores iniciales de las variables --> LA CLAVE PARA REINICIAR MI PROGRAMA
  bg = color( 0 );
  t = height / 10;  //=40

  //forzar el framete --> a modo pedagógico, NO hacerlo.
  //frameRate( 5 );
}

void draw() {
  pushMatrix();
  translate( 400, 0 );  //truco para "correr" todo mi dibujo a la mitad derecha de la pantalla

  background( bg );

  for ( int x = 0; x < 10; x ++ ) {  //for que va del 0 al 9 sumando de a 1
    for ( int y = 0; y < 10; y ++ ) {  //for que va del 0 al 9 sumando de a 1
      
      //calculos: SIN FUNCION
      //float d = dist( mouseX, mouseY, x*t, y*t);  //me devuelve distancia lineal en px entre dos puntos
      //float m = map( d, 0, 565, 5, 40 );  //transformo la escala distancia en escala tamaño modulo
      
      //calculos: CON FUNCION
      float m = calcularDistMapMouse( x*t, y*t, 5, 40 );

      //dibujo: SIN FUNCION
      //fill( 100 );
      //rect( x*t, y*t, t, m );  //dibujo 100 circulos
      //fill( 255 );
      //circle( x*t, y*t, m );  //dibujo 100 circulos

      //dibujo: CON FUNCION
      modulo( x, y, t, m );  //funcion que NO devuelve valor: funcion de dibujo
     }
  }


  //dibujo mi mouse JA
  fill( 200, 0, 0 );
  circle( mouseX, mouseY, 10 );

  //debug mouse
  //stroke( 200, 0, 0 );
  //line( mouseX, 0, mouseX, height );

  popMatrix();

  println( frameRate );  // ver en consola que sea mayor a 30fps, ideal 60fps
}

//-------------------------- metodos de processing

void keyPressed() {
  //background( 255 );  //lo que NO hay que hacer para cambiar el color del fondo

  if ( key == ' ' ) {  //esta tecla corresponde a la barra espaciadora
    //bg = color( random(100, 200), random(0, 50), random(0) );  //colores rojizos
    //bg = color( random(200, 255), random(200, 255), random(200, 255) );  //colores pasteles!!!
    bg = color( random(0, 70), random(0, 70), random(0, 70) );  //colores oscuros?????
  }
  
  if ( key == 'r' ){
    resetearVariables();
  }
}

//-------------------------- funciones propias

void modulo( int x, int y, int t, float m ) {
  //dibujo
  fill( 100 );
  rect( x*t, y*t, t, m );  //dibujo 100 circulos
  fill( frameCount%255 );
  circle( x*t, y*t, m );  //dibujo 100 circulos
}

float calcularDistMapMouse( int x2, int y2, int escMin, int escMax ){
  float d = dist( mouseX, mouseY, x2, y2 );  //me devuelve distancia lineal en px entre dos puntos
  float m = map( d, 0, 565, escMin, escMax );  //transformo la escala distancia en escala tamaño modulo
  
  return m;
}

void resetearVariables(){
  bg = color( 0 );
  t = height / 10;  //=40
}
