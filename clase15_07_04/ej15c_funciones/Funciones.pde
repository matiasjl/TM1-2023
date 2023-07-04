
boolean estoyDentroDeZonaCircular( int x, int y, int r ){  //con parametros con return
  //dist(mouseX, mouseY, 300, 400)<=50
  //dist(mouseX, mouseY, 300, 200)<=50
  
  //version con variable
  //boolean resultado = dist(mouseX, mouseY, x, y) <= r;
  //return resultado;
  
  //version resumida
  return dist(mouseX, mouseY, x, y) <= r;
  
}

void miTextoDeEstado( int e, int t ) {  //con parametros sin return
  textSize( t );
  textAlign( LEFT, CENTER );
  fill( 255 );
  text( "Estado: " + e, 100, 100 );
}

void reset() {  //sin parametros sin return
  //vuelvo variables a valor original
  estado = 0;
}
