
// Sistemas de coordenadas en processing
// ej03_espiral_polares

/* CONVERSION ENTRE SISTEMAS DE COORDENADAS
 
 de polares a cartesianas
 x = d*cos(a)
 y = d*sin(a)
 
 de cartesianas a polares
 d = dist(x,y,x2,y2);
 a = atan2(y-y2,x-x2);
 */
 
 int velA, accA;

void setup(){
  size( 600, 600 );
  noStroke();
  colorMode( HSB, 360, 100, 100 );
  
  accA = 5;
}

void draw(){
  
  push();  //pushMatrix() + pushStyle()
  translate( 300, 300 );
  
  float angulo = radians(velA) ;  //sumo 2 grados por ciclo draw
  float distancia = frameCount/4;  //sumo pixeles de distancia por ciclo draw
  
  //conversión de polares a cartesianas
  float x = distancia * cos(angulo);
  float y = distancia * sin(angulo);
  
  //color y dibujo
  float distMax = dist(0, 0, width/2, height/2 );  //diagonal entre esquina y centro
  float hue = map( distancia, 0, distMax, 0, 359 );
  fill( hue, 100, 100 ); 
  circle( x, y, 50 );
  pop();
  
  velA -= accA;
  

}
