

void setup(){
  size(400, 400 );
  noFill();
  strokeWeight( 10 );
}

void draw(){
  background( 128 );

  //v2
  for( int i = 0 ; i < 8 ; i++){
    
    float r = dist( mouseX, mouseY, width/2, height/2+i*50 );  //me devuelve el radio de cada circulo
    float m = map( r, 0, 350/2, 1, 10 );
    float c = map( r, 0, 350/2, 0, 255 );
    
    strokeWeight( m );
    stroke( c, 0, 0 );
    circle( width/2, height/2, i*50 );  // i = 0, 1, 2, 3...7
  }
  
  
}
