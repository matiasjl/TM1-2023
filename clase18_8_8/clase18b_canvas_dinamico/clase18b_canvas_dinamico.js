function setup() {
  createCanvas(windowWidth, windowHeight);  //diseño responsive
  //createCanvas(600, 600);
  textSize( 48 );
}


function draw() {
  background( 200, 0 , 0 );
  fill( 200 );
  text( windowWidth + " / " + windowHeight, 100, 100 );  //diseño responsive
  //text( width + " / " + height, 100, 100 );
}

function windowResized() {  //se llama cuando la ventana del navegador cambia de tamaño
  resizeCanvas(windowWidth, windowHeight);  //cambio las dimensiones del canvas
}
