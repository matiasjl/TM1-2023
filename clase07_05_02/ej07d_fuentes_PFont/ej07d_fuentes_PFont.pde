
PFont miFuentePorInterfaz;
PFont miFuentePorCodigo;

void setup(){
  size( 700, 300 );
  //
  miFuentePorInterfaz = loadFont("AmericanTypewriter-CondensedBold-48.vlw"); // Este es el que va para tp1
  //
  miFuentePorCodigo = createFont( "Arial", 24 );  //NO TIENEN QUE HACERLO EN TP1 -------!!!!
}

void draw(){
  background( 0 );
  textSize( 24 );
  
  textFont( miFuentePorInterfaz );
  text( "Fuente creada por interfaz grafica", 30, 100 );
  
  textFont( miFuentePorCodigo );
  text( "Fuente creada por codigo: createFont()", 30, 200 );
}
