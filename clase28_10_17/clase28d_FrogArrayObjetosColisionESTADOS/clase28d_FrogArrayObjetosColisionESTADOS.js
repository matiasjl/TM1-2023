
let j;

function setup() {
  createCanvas( 600, 600 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
  
  j = new Juego();
  
}

function draw() {
  background( 255 );
  
  j.actualizar();
  j.dibujar();

}

function keyPressed(){
  j.teclado();
}
