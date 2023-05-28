
// Sistemas de coordenadas en processing
// ej02_planetas

int radio = 200;  //radio*2 = diametro de una circunferencia
int velAng, accAng;  //variables para determinar la velocidad y aceleración de la rotación de la luna
boolean debug;  //variable para actibar o desactivar la visualización de los "lienzos" rotados

void setup(){
  size( 600, 600 );
  
  accAng = 5 ;
  debug = true;
}

void draw(){
  background( 0 );
  
  pushMatrix();
  translate( width/2, height/2 );  //traslado el eje de coordenadas al centro
  
  //sol  --> fijo al centro de la pantalla
  fill( 255, 255, 0 );
  noStroke();
  circle( 0, 0, 120 );
  
  //orbita --> delinea el "camino" de la tierra
  noFill();
  stroke( 200 );
  strokeWeight( 3 );
  circle( 0, 0, radio*2 );  
  
  popMatrix();
  
  //planeta --> orbitar sobre el sol
  pushMatrix();
  translate( width/2, height/2 );
  rotate( radians(frameCount) );

  if( debug ){
    //delimita el area de la pantalla
    noFill();
    stroke( 255 );
    strokeWeight( 1 );
    rect(0, 0, width, height );
  }
  
  //planeta (dibujo)
  noStroke();
  fill( 0, 0, 200 );
  circle( radio, 0, 50 );
  
  //luna  --> orbibitar sobre el planeta
  translate( radio, 0 );
  rotate( radians(velAng) );

  if( debug ){
    //delimita el area de la pantalla
    noFill();
    stroke( 255 );
    strokeWeight( 1 );
    rect(0, 0, width, height );
  }

  //luna (dibujo)
  fill( 255 );
  circle( 50, 0, 30 );
  
  popMatrix();
  
  velAng = velAng + accAng;
  //velAng += accAng;
}

void keyPressed(){
  if( key == 'd' ){
    debug = !debug;  //si debug es false, entonces le asigna true (y viceversa)
  }
}
