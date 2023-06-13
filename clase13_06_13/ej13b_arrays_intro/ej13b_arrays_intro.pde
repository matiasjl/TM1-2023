
//arreglos/arrays introduccion

//tipoDato[] nombreVar = new tipoDato[cantidad];
color[] paleta = new color[6];  //declaro arreglo y asigno su dimensión/tamaño

int[] numerosRandom = new int[100];  //100 lugares en mi arreglo
int indice = 50;

void setup() {
  size( 700, 250 );
  textAlign( CENTER, CENTER );
  textSize( 50 );

  paleta[0] = color( 255, 0, 0 );
  paleta[1] = color( 0, 255, 0 );
  paleta[2] = color( 0, 0, 255 );
  paleta[3] = color( 255, 255, 0 );
  paleta[4] = color( 0, 255, 255 );
  paleta[5] = color( 255, 0, 255 );

  println( paleta );
  println();

  for ( int i = 0; i < 100; i++ ) {
    numerosRandom[i] = int( random(30, 90) );
    println( numerosRandom[i] );
  }
}

void draw() {
  background( 0 );

  for ( int i = 0; i < 6; i++ ) {
    fill( paleta[i] );  //mucho cuidado con no pasarse del tamaño
    circle( i*100+100, 100, numerosRandom[i] );  //uso solo 6 de la lista de 100 numerosRandom
  }
  
  fill( 200 );
  text( numerosRandom[indice], width/2, 180 );
}

void keyPressed() {
  if ( indice > 0 && indice < 99 ) {  //si estoy dentro del rango

    if ( keyCode == LEFT )  //resto con flecha izquierda
      indice--;

    if ( keyCode == RIGHT )  //sumo con flecha derecha
      indice++;

    println( indice );
  }
}
