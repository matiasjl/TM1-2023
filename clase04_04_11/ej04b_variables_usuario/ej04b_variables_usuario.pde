
// VARIABLES DE USUARIO = creadas por el coder
/*
  int = enteros
  float = decimales
  boolean = binario
  String = texto 
  Char = caracter
*/

//1) declarar la variable
//   tipo de dato + nombre de variable ;
float tamaño;
int posX;

void setup(){
  size( 400, 400 );
  
  //2) asignar la variable (se puede repetir este paso)
  //   nombre = valor ;
  tamaño = 20; 
  posX = 0;
}

void draw(){
  background( 0 );
  
  //3) utilizar mi variable en CUALQUIER lugar donde haya un num
  //   incluso se puede utilizar mas de una vez
  
  fill( tamaño );  //reutilizacion de variables
  circle( posX/2, height/2, tamaño );  //CHECK DIVISIONES
  
  //incremento dinamico
  tamaño = tamaño + 0.2;  //+ suma valores
  //println( "tamaño: " + tamaño);  //+ concatena textos
  
  //incremento de la posicion x
  posX++;  //posX = posX + 1r
  println(posX);
  println(frameCount);
}

void keyPressed(){  //CUANDO presiono cualquier tecla del teclado
  tamaño = 100;
}

void mousePressed(){  //CUANDO presiono cualquier clic del mouse o pad
  posX = 0;
}
