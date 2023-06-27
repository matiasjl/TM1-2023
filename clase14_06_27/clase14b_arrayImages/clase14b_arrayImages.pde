
//dimension/tamaño de mi/s arreglo/s (util para los fors)
int c = 6;  

//declaracion del arreglo con su dimension/tamaño
PImage[] patitos =  new PImage[c];


void setup() {
  size( 256, 256 );

  //carga de las imagenes
  
  //de a una a la vez
  //patitos[0] = loadImage( "images/patito0.png" );
  //patitos[1] = loadImage( "images/patito1.png" );
  //patitos[2] = loadImage( "images/patito2.png" );
  
  //carga masiva = ciclo for
  for( int i = 0 ; i < c ; i++ ){
    patitos[i] = loadImage( "images/patito" + i + ".png" );  
  }
  
}

void draw(){

  image( patitos[2], 0, 0 );  //muestro sólo la imagen guardada en la tercera posición de mi arreglo
}
