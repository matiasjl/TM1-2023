
void setup(){
  size(400, 200);
  setTexto();
}

void draw(){
  background( 255 );
  
  //basado en que 100 dolares son 45.000 pesos
  //¿Cuantos son 10.000 pesos en dolares?
  float resultado = map( 10000, 0, 45000, 0, 100 ) ;
  text( "USD " + resultado, width/2, height/2 ); 
}


void setTexto(){  //funcion sin parametros que no devuelve valor
  fill( 0 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
}
