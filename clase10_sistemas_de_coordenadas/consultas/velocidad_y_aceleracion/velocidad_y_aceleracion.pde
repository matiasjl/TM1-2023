
// velocidad y aceleracion

float x = 0;
float acc = 0;

void setup(){
  size( 600, 300 );
}

void draw(){

  circle( x, height/2, 50 );
  
  //x++;
  x += acc;
  //x = x + 1;
  
  acc = mouseX / 100 ;
  
  if( x > width ){
    x = 0;
    background( 200 );
  }
}
