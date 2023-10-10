
let contador = 0;

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
  
  // si pasaron 5 segundos exactos
  if( contador == 5*30 ){
    ellipse( random(width), random(height), 100, 100 );
  }

  // cada 1 segundos
  if( contador % 30 == 0 ){
    ellipse( random(width), random(height), 50, 50 );
  }

  // cada 5 segundos
  if( contador % (30*5) == 0 ){
    rect( random(width), random(height), 50, 50 );
  }

  // visualizo frameCount
  rect( 0, 0, 100, 100 );
  text( frameCount, 50, 50 );

}
