
void setup(){

  //ejemplos de funciones de processing con return
  println( dist(100,100,0,0) );  //float
  println( round(8.8) );  //int
  println( int(8.8) );  //int
  
  int(8.8);  //esta funcion suelta NO hace nada, su valor "se pierde"
  frameRate( 30 );  //esto SI es es una funcion pero tipo void (NO devuelve valor)
  
  int miSuma = suma( 10, 15 );
  println( miSuma );
  
  println( agregarSufijo("aviso") );
  println( agregarSufijo("hola_mundo") );
  
  println( division(10, 3) );
    
}

void draw(){
  //println( frameRate );  //esto es una variable, NO es una funcion  
}
