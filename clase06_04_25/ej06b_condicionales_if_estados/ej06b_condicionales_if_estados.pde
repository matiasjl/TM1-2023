
// estados y eventos para tp1

//int estados;
String estado;
int c; //contador

void setup() {
  size( 640, 480 );  //resolucion tp1
  textAlign( CENTER, CENTER );
  textSize( 50 );
  fill(200);

  estado = "menu";
  
  frameRate( 60 );
}

void draw() {
  //
  //MAQUINA DE ESTADOS --
  //
  if ( estado.equals("menu") ) {
    background(0);
    text( "MENU", width/2, height/2 );
    circle( width/2, height/4*3, 50 );
    //
  } else if (estado.equals("p1") ) {
    background(50);
    text( "p1", width/2, height/2 );
    //
    c++;  //suma 1 per frame
    if( c >= 600 ){  // 60fps * 10seg = 600
      estado = "p2";
      c = 0;  //RESET DE VARIABLE CONTADOR
    }
    //
  } else if (estado.equals("p2") ) {
    background(100);
    text( "p2", width/2, height/2 );
    //
    c++;  //suma 1 per frame
    if( c >= 300 ){  // 60fps * 5seg = 300
      estado = "p3";
      c = 0;  //RESET DE VARIABLE CONTADOR
    }
    //
  } else if (estado.equals("p3") ) {
    background(150);
    text( "p3", width/2, height/2 );
    //
  } else {
    text( "no es ningun \n estado preseteado", width/2, height/2 );
    //si no es ninguna de las condiciones anteriores,
    //entonces ejecuta este bloque de codigo
  }
  println( estado );
}

void mousePressed() {
  // circle( width/2, height/4*3, 50 );  <-- de acá salen los datos
  if( estado.equals("menu") ){
    if( dist(width/2, height/4*3, mouseX, mouseY) < 50/2 ){
      estado = "p1";
    }
  }
  if( estado.equals("p3") ){
     //aca falta boton cuadrado
     estado = "menu" ;
  }
}
