
// ESCALA DE VALORES CON map()
// map( valorAEscalar, escala1a, escala1b, escala2a, escala2b );

void setup(){
  size( 400, 200 );
}

void draw(){
  
  //escala1: 0 a 400 > dentro de esta escala va el VALOR
  //escala2: 0 a 255 > resultado de la operación
  float bg = map( mouseX, 0, 400, 0, 255 );
  
  background( bg );
  stroke( 255, 0, 0 );
  line( mouseX, 0, mouseX, 100 );
  line( bg, 100, bg, 200 );
  
  println( bg );
}
