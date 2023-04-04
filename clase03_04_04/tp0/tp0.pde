
//plantilla para tp0: canal alpha e imagenes

/*  LINKS UTILES

-   https://www.iloveimg.com/crop-image
-   https://www.iloveimg.com/resize-image
-   https://www.photopea.com

*/

//1) crear el espacio en memoria donde cargar la imagen
PImage gato;

void setup() {
  size( 800, 400 );
  
  //2) cargar la imagen en mi "variable" llamada gato
  gato = loadImage("gatito.jpg");  //IMPORTANTE LA EXTENSION DEL ARCHIVO EN MAYUS O MINUS
}

void draw() {
  background( 0, 50, 200 );
  
  //3) dibujar la imagen, posicionándola donde es deseado
  image( gato, 400, 0 );
  //image( gato, 400, 0, 400, 400 );
  
  //------------------------

  //RECTANGULO
  noStroke();  //SIN borde
  fill( 20, 170, 10 );
  rect( 150, 100, 200, 200 );

  //CIRCULO
  stroke( 0, 127 );  //2do valor: canal alpha
  fill( 170, 10, 20, 127);  //4to valor: canal alpha
  circle( 150, 200, 200 );
  
  //TEXTO
  fill( 255 );
  textSize( 36 );
  text( "Hola!", 155, 210 );
}
