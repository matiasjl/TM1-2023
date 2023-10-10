let x, y, velX, velY, r;
 

function setup() {
  createCanvas(400, 400);
  inicializarElemento();
}


function draw() {
  background(255, 100, 0);
  actualizarElemento();
}


function inicializarElemento() {
  r = 20;
  x = random( r, width-r );
  y = random( r, height/2 );
  velX = 2;
  velY = random(-2, 2);
}


function actualizarElemento() {
  moverElemento();
  dibujarElemento();
}

function moverElemento() {
  //comportamiento de movimiento
  x+=velX;
  y+=velY;
  //evaluar lo limites:
  if ( y >= height-r ) {
    y = height-r;
    velY = -velY;
  }
  if ( y <= 0+r ) {
    y = 0+r;
    velY = -velY;
  }
  //limites horizontales (comportamiento toroidal)
  if ( x > width+r  ) {
    x = 0-r;
  }
  if ( x < 0-r ) {
    x = width+r;
  }
}
function dibujarElemento() {

  //dibujo
  push();
  translate(x, y);
  fill(200, 200, 255);
  ellipse(0, 0, r*2, r*2);
  pop();
}
