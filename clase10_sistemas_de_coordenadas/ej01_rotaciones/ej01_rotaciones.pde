
// Sistemas de coordenadas en processing
// ej01_rotaciones
//
// translate();
// rotate();
// radians();
// pushMatrix();
// popMatrix();

// angulos NO se manejan en grados (0, 359 ) --> radianes (0, 2*PI)
// 0 = 0
// 45 = PI/4
// 90 = PI/2
// 180 = PI (3,1415...)
// 360 = 2*PI 

int vel, acc;

void setup() {
  size( 600, 600 );
  strokeWeight( 2 );
  
  vel = 0 ;  //velocidad actual
  acc = 5 ;  //aceleracion (se suma a la velocidad)
}

void draw() {
  background( 0 );
  
  pushMatrix();
  
  //rotate( 45 );  //NO SON 45 grados, SON 45 en unidades de radianes
  //rotate( PI/4 );  //45 grados
  //rotate( radians(45) );

  translate( width/2, height/2);
  rotate( radians(vel) );

  //delimita el area de la pantalla
  noFill();
  stroke( 200 );
  rectMode( CORNER );
  rect(0, 0, width, height );
  
  //el cuadrado que queremos hacer rotar
  fill( 255 );
  rectMode( CENTER );
  rect( 0, 0, 200, 200 );
  
  //noLoop();  //frena el ciclo draw
  
  popMatrix();
  
  ellipse( 300, 0, 100, 100 );  //fuera de a transformacion de la matrix 
  
  vel += acc;
  //vel = vel + acc;
}
