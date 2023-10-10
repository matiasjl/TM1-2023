
function setup() {
  createCanvas( 800, 600 );
  frameRate( 1 );
  textSize( 24 );
  textAlign( CENTER, CENTER );

}


function draw() {
  
  //ejemplo de probabilidad al 10%
  if( random(100) < 10 ){
    ellipse( random(width), random(height), 50, 50 );
  }
  
  // visualizo frameCount
  rect( 0, 0, 100, 100 );
  text( frameCount, 50, 50 );

}
