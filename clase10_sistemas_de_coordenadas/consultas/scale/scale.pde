
//scale  //entre 0 y 1 = valores normalizados

void setup(){
   size( 600, 600 );
}

void draw(){
  background( 0 );
  
  push();
  translate( width/2, height/2 );
  
  for( int i = 0 ; i < 10 ; i++ ){
    scale( 0.8 );
    fill( 200, 70 );
    circle( 0, 0, 600 );
    //rect( 0, 0, 100, 100 );
  }
  
  pop();
  
  
}
