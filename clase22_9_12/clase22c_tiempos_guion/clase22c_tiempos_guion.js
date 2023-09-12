
let contador = 0;
let guion = [1, 2, 3, 5, 8, 13, 21];
let indice = 0;

function setup() {
  createCanvas( 800, 600 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
  
  // fuerzo a 30fps para poder calcular segundos
  frameRate( 30 );
    
}


function draw() {
  
  // actualizo la variable contador
  contador++;

  // cada X segundos SEGUN EL GUION
  if( contador % (30*guion[indice] ) == 0 ){
    rect( random(width), random(height), 50, 50 );
    indice = indice + 1;
  }

  // visualizo frameCount
  rect( 0, 0, 100, 100 );
  text( frameCount, 50, 50 );

}
