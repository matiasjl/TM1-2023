
//dimension/tamaño de mi/s arreglo/s (util para los fors)
int c = 6;  

//declaracion del arreglo con su dimension/tamaño
String[] partes = new String[c];
String[] textos = new String[c];

//update: unificar en un solo arreglo de 2 dimensiones
//String[][] textos = new String[2][6];
//ej16b_array_bidimensional_string 

void setup() {
  
  size( 200, 200 );

  //metodo 1: asignar manualmente los textos en cada indice
  partes[0] = "Parte 1: Nacimiento desafortunado";
  partes[1] = "Parte 2: En busca de su lugar";
  partes[2] = "Parte 3: Encuentro con los cisnes";
  partes[3] = "Parte 4: La revelación";
  partes[4] = "Parte 5: La aceptación de sí mismo";
  partes[5] = "Parte 6: Final feliz";
  
  //metodo 2: utilizar la funcion loadStrings() para cargar desde un archivo de texto
  textos = loadStrings("textos.txt");
  //println( textos );
  for( int i = 0 ; i < c ; i++ ){
    println( i + ": " + textos[i] );
  }
  
}

void draw(){
  background( 0 );
  //TIP: param 4 y 5 son ancho y alto de caja de texto
  text( textos[0], 0, 0, 200, 200 );

}
