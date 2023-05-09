

// sintaxis de las funciones
// nombre( param1, param2 );

int tamanio = 300;

void setup(){
  size(400,400);
  background(9,175,49);
  
  frameRate( 1 );
  
}
void draw(){
  background(9,175,49);
  
  gatito();
  
  ojo( round(random(width)), round(random(height)) );
  
  ojo(100, 100, 50, color(200, 0, 0) );  //rojo fuego
  ojo(200, 200, 100, color(0, 150, 50) );  //verde entreriano
  ojo(400, 400, tamanio, color(0, 200, 200) );  //celeste careta
  
}

void keyPressed(){
  tamanio = int(random(400));
}
