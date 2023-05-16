
void setup(){
  size( 400, 400 );
  //colorMode( HSB );
  colorMode( HSB, 360, 100, 100 );
}

void draw(){
  background( 200 );
  
  //linea vertical
  //line( mouseX, 0, mouseX, height ); 
  
  //degradez de rojo en RGB
  //for( int r = 255 ; r > 0 ; r-- ){
  //  stroke( r, 0, 0 );
  //  line( 255-r, 0, 255-r, height );
  //}

  //degradez de hue en HSB
  for( int h = 360 ; h > 0 ; h-- ){
    stroke( h, 100, 100 );
    line( 360-h, 0, 360-h, height );
  }


}






void degradez(){
}
