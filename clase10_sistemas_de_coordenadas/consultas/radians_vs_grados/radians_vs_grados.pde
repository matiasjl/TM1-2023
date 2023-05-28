
//radians vs grados

int inc = 0;

void setup() {
  size( 600, 600 );
  rectMode( CENTER );
  textSize( 18 );
}

void draw() {
  background( 0 );
  fill( 150 ); 

  push();
  translate(200, 300);
  rotate( inc );
  rect( 0, 0, 100, 50 );
  text( inc, 0, 100 );
  pop();

  push();
  translate(400, 300);
  rotate( radians(inc) );
  rect( 0, 0, 100, 50 );
  pop();
  
  if( inc < 45 ){
    inc++;
  }
}
