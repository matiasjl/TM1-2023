
// ANIMACION DE NOMBRE PROPIO

//declaración + asignacion (2 pasos en 1)
String nom = "Matias";
String ape = "JL";
//String c = nom + " " + ape;  //concatenar con espacios

//solo declaracion
//int x, y;  //declaracion de variables múltiples
int x;
float y;

void setup() {
  size(600, 200 );
  textSize( 50 );
  textAlign(CENTER,CENTER);
  
  //asignacion de valores
  x = -100;
  y = height/2;
}

void draw() {
  fill(0,10);
  noStroke();
  rect(0,0,width,height);
  
  //ACTUALIZACION DE VARIABLES (cálculos)
  x += 2;  // x = x + 2
  
  
  //DIBUJO EN PANTALLA (render)
  fill(255);
  //text( nom, x, y );  //todas variables
  text( nom, mouseX, y );  //ATENTOS mouseX
  //
  fill(200,0,0);
  text( ape, random(width), random(height) );
}

void keyPressed() {
  y = random(height);
  println( y );

  //x = round( random(width) ); //redondeado para int
  //println( x );
}

void mousePressed() {
  noLoop();
}
