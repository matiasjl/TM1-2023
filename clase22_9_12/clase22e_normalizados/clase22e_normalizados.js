
let posiciones = [];
let posX;

function setup() {
  createCanvas( 800, 600 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
  
  // fuerzo a 30fps para poder calcular segundos
  frameRate( 30 );
  
  posX = random( 0, 1 );
  
  for( let i = 0 ; i < 20 ; i++ ){
    // la funcion .push agrega un valor al final de la lista/arreglo
    posiciones.push( random( 0, 1 ) );
    console.log( posiciones[i] );
  }
    
}


function draw() {
  background( 200 );
  
  // visualizo frameCount
  rect( 0, 0, 100, 100 );
  text( frameCount, 50, 50 );
  
  // valores normalizados aplicados * width (ancho del canvas)
  ellipse( posX*width , frameCount-150, 100, 100 );
  text( posX, posX*width , frameCount-150 );
  
  for( let i = 0 ; i < posiciones.length ; i++ ){
    ellipse( posiciones[i]*width , frameCount, 10, 10 );
    //text( posiciones[i], posiciones[i]*width , frameCount );    
  }  
}
// NORMALIZADO*ESCALA = Funcion MAP()
// posiciones[i]*width
// map( posiciones[i], 0, 1, 0, width );
