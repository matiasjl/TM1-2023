let xP, yP, rP, velYP, piso;
function setup() {
  createCanvas(400, 400);
  piso = 300;
  rP = 20;
  xP = width*0.25;
  yP = piso-rP;
  velYP = 0;
}


function draw() {
  background(255, 0, 0);

  //comportamiento de movimiento:
  yP+=velYP;

  //actualizamos el valor de la velocidad en velYP;
  if (yP+rP<piso) {
    //este valor es la "fuerza de gravedad"

    velYP+=0.25;
  } else {
    //el rebote puede darse invirtiendo el signo de la velocidad:
    //ademase al multiplicar por un valor menor a 1
    //da el efecto de "roce":
    velYP=-(velYP*0.35);
    yP=piso-rP;
  }


  //piso:
  strokeWeight(2);
  line(0, piso, width, piso);
  fill(255);
  ellipse(xP, yP, rP*2, rP*2);
}

function keyPressed() {
  saltar();
}
function mousePressed() {
  saltar();
}

function  saltar() {
  //este valor es la "fuerza de salto"
  //sin preguntar si está en el piso sería version "falppy bird":
  //velYP = -5;

  //solo saltar cuando esto en el piso:
  if ( yP>piso-rP-5) {
    velYP = -8;
  }
}
