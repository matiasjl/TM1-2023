
void setup(){
  size(400, 300 );
  textSize( 28 );
  fill( 0 );
}

void draw(){
  background( 200 );
  
  float miSuma = suma( 5.5, 60 );  
  text( "miSuma: " + miSuma, 50, 100 );
  
  boolean mitadDerecha = mouseEnMitadDerechaDeLaPantalla();
  text( "mitadDerecha: " + mitadDerecha, 50, 150 );
  
  boolean coordenadaDerecha = coordenadaEnMitadDerechaDeLaPantalla( 300 );
  text( "coordenadaDerecha: " + coordenadaDerecha, 50, 200 );
  
  boolean estoyDentro = dentroDeZonaCircular( 320, 80, 80/2 );
  text( "estoyDentro: " + estoyDentro, 50, 250 );
  
  //utilizar el resultado de mi funcion para pintar el circulo
  pushStyle();
  //if( estoyDentro ){
  if( dentroDeZonaCircular( 320, 80, 80/2 ) ){
    fill( 0 );
  }else{
    fill(200 );
  }
  circle( 320, 80, 80 );
  popStyle();
  
}

void mousePressed(){

}
