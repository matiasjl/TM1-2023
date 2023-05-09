
//funciones que devuelven valor (return)

void gatito(){

}

float suma( float a , float b ){
  float resultado = a + b;
  return resultado;
  
  //return a+b;
}

boolean mouseEnMitadDerechaDeLaPantalla(){
  if( mouseX >= width/2 ){
    return true;
  }else{
    return false;
  }
}

boolean coordenadaEnMitadDerechaDeLaPantalla( int x ){
  if( x >= width/2 ){
    return true;
  }else{
    return false;
  }
}

boolean dentroDeZonaCircular( float x, float y, float r ){
  float distancia = dist( mouseX, mouseY, x, y );
  if( distancia < r ){
    return true;
  }else{
    return false;
  }

}

color getNegro(){
  return 0;
}
