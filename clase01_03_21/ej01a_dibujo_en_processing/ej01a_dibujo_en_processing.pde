//hola tecno1 com2! Esto es un comentario

//la configuracion del programa: se ejecuta una sola vez
void setup(){
  //size( ancho-px, alto-px );
  size( 400, 400 );
  
  //funcion( parametro ) ;
  println( "hola comisión 2" );
  
}

//para dibujar en pantalla: se ejecuta 60fps
void draw(){
  //background( color-entre-0y255)
  background( 0 );
  
  //primitivas de dibujo
  
  //circulo
  fill( 255 );
  circle( 200, 200, 360 );
  
  //cuadrado
  fill( 127 );
  rect( 75, 75, 250, 250 );
  
  //triangulo
  fill( 0 );
  triangle( 200, 200, 100, 300, 300, 300 );
  triangle( 200, 200, 100, 100, 300, 100 );
  
}
