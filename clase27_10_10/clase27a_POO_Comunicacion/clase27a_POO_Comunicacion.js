
//mi arreglo de circulos
let a = [];

function setup() {
  createCanvas( 600, 600 );
  textSize( 24 );

  for ( let i = 0; i < 10; i++ ) {
    a.push( new A( i*50 + 50 ) );
  }
}

function draw() {
  background( 255, 10 );

  for ( let i = 0; i < 10; i++ ) {
    a[i].actualizar();
    //a[i].dibujar();  //no dibujo mas el circulo, solo dibujo las lineas entre ellos
    
    //COMUNICACION ENTRE OBJETOS
    //dibujo una linea entre cada circulo con su siguiente
    //if( i < 9 ){
    //  a[i].lineaEntreObjetos( a[i+1] );  //una posicion del arreglo
    //}
    
    //COMUNICACION ENTRE OBJETOS
    //dibujo una linea entre cada circulo con todos los otros
    a[i].lineaEntreTodosLosObjetos( a );  //el arreglo entero
    
  }
}
