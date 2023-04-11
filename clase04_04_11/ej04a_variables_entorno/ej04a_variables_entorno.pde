
// VARIABLES DEL ENTORNO (Processing) = numeros variables

// frameCount = cuenta ciclos del draw
// frameRate = devuelve el frameRate ACTUAL
// width = ancho de la ventana (size) --> constante?
// height = altura de la ventana (size) --> constante?
//
// mouseX = get de la posicion X del mouse
// mouseY = get de la posicion Y del mouse

void setup(){
  size( 800, 400 );
  textAlign( CENTER, CENTER );  //--> alineacion de texto
  
  frameRate(10);  //a modo didactico: NO usar
}

void draw(){
  background(0);
  textSize( frameCount );
  text(frameCount, width/2, 175 );  //frameCount
  textSize( 40 );
  text(frameRate, width/2, 225 );  //frameRate
  
  //PI = 3,1415  //CONSTANTE
}
