
int suma( int a, int b ){
  return a + b;
}

float division( float a, float b ){
  return a / b;
}

String agregarSufijo (String texto){
  //primero guardo en variable y luego retorno
  String resultado = "pre_" + texto;
  return resultado;
  
  //"operacion directa"
  //return "pre_" + texto;
}

boolean botonRect( int a, int b, int c, int d ){
  return mouseX >= a && mouseX <= b && mouseY >= c && mouseY <= d;
}

boolean estado( int estado, int valor ){
  return estado == valor;
}

//color deRGBaHSB( ){
  //conversion 
//}
