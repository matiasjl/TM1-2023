
// Sistemas de coordenadas en processing

/* CONVERSION ENTRE SISTEMAS DE COORDENADAS
 
 de polares a cartesianas
 x = d*cos(a)
 y = d*sin(a)
 
 de cartesianas a polares
 d = dist(x,y,x2,y2);
 a = atan2(y-y2,x-x2);
 */

void setup() {
  size( 600, 600 );
  noStroke();
  colorMode( HSB, 360, 100, 100 );

}

void draw() {
  background( 0 );

  push();  //pushMatrix() + pushStyle()
  translate( 300, 300 );
  
  for( int i = 0 ; i<360*10 ; i++ ){
    float angulo = radians(i) ;   //angulos
    float distancia = i / 8;     //pixeles
  
    //conversión de polares a cartesianas
    float x = getX( distancia, angulo);
    float y = getY( distancia, angulo);
  
    //color y dibujo
    float distMax = dist(0, 0, width/2, height/2 );  //diagonal entre esquina y centro
    float hue = map( distancia, 0, distMax, 0, 359 );
    fill( hue, 100, 100 );
    float t = map( distancia, 0, distMax, 0, 40 );
    circle( x, y, t );
  }
  
  pop();

}

//funciones para la conversión de polares a cartesianas
float getX( float d, float a ){
  float x = d * cos(a);
  return x;
}
float getY( float d, float a ){
  float y = d * sin(a);
  return y;
}
