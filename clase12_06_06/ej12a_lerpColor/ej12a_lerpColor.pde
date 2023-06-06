
color c1, c2;
int m;

void setup() {
  size( 400, 400 );
  //noStroke();

  c1 = color(200, 0, 0);  //rojo oscuro
  c2 = color(0, 0, 200);  //azul oscuro
  //c1 = color(255);  //blanco
  //c2 = color(0);  //negro
  
  m = width / 10;  //40
}

void draw() {

  for ( int i = 0 ; i < 400 ; i++ ) {
    
    float n = map( i, 0, 400, 0, 1 );
    color c = lerpColor( c1, c2, n );  //valor entre 0 y 1 = normalizado

    stroke( c );
    line( i, 0, i, height );
  }
}
