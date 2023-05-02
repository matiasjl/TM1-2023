
int estado = 0;
float posX, opacidad;

void setup(){
  size( 600, 200 );
  textAlign( LEFT, CENTER );
  
  posX = 0 ;
  opacidad = 255;
}

void draw(){
  background( 0 );
  //
  if( estado == 0 ){
    //
    posX = posX + 0.1;
    opacidad = opacidad - 0.2;  //opacidad--;
    //
    textSize( frameCount/10 );
    fill( 255, opacidad );
    text( "Hola Bianca", posX, 105 );
    //
  }else if( estado == 1 ){
    background( 255, 0, 0 );
  }
}

void keyPressed(){  //el cambio de estado es por teclado (NO x tiempo)
  if( key == '0' ){
    estado = 0;
  }else if( key == '1' ){
    estado = 1;
  }
  println( estado );
}
