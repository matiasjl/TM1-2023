
// botones circulares y (si llego) cuadrados

int x, y, d;
color bg;
float distancia, radio;
int colorBtn;

void setup() {
  size(400, 400 );  

  x = 50;
  y = 350;
  d = 70;

  bg = color( 255 );
}

void draw() {
  background( bg );
  distancia = dist(x, y, mouseX, mouseY);
  radio = d / 2;

  //color_boton = mouseOver
  if ( distancia < radio ) {
    //fill( 180 );
    colorBtn = 180;
    if ( mousePressed ) {
      colorBtn = 20;
    }
  } else {
    //fill( 255 );
    colorBtn = 255;
  }

  //boton
  fill( colorBtn );
  circle( x, y, d );
  //referencia
  line( x, y, mouseX, mouseY );
}

void mousePressed() {  //CUANDO presiono mouse
  //color_fondo = presionar el boton
  if ( distancia < radio ) {  //CUANDO estoy dentro del circulo
    bg = color( random(255), random(255), random(255) );
    //colorBtn = 20;
  }
}
