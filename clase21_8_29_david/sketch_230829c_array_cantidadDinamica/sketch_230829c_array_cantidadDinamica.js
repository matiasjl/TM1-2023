
//un variable para la cantidad:
let cant = 50;
let cantMostrar = 1;
//declaracion de los arreglos:
let x=[], y=[], velX=[], velY=[], r=[], col=[];

//variables para un personaje:
let xP, yP, rP, velP;

function setup() {
  createCanvas(400, 400);
  inicializarElemento();
  inicializarPersonaje();
  console.log("Holis Mundis");
}


function draw() {
  background(255, 100, 0);
  evaluarColisiones();
  actualizarElemento();
  actualizarPersonaje();
}


function inicializarElemento() {
  for ( let i=0; i<cant; i++ ) {
    //i -> 0 , 1 , 2 , 3
    r[i] = 20;
    x[i] = random( r[i], width-r[i] );
    y[i] = random( r[i], height/2 );
    velX[i] = random(-2, 2);
    velY[i] = random(-2, 2);
    col[i] = color(random(255), random(255), random(255));
  }
}


function actualizarElemento() {
  moverElemento();
  dibujarElemento();
}

function moverElemento() {
  for ( let i=0; i<cantMostrar; i++ ) {
    // i -> 0 , 1 , 2 , 3
    //comportamiento de movimiento
    x[i]+=velX[i];
    y[i]+=velY[i];
    //evaluar lo limites:
    if ( y[i] >= height-r[i] ) {
      y[i] = height-r[i];
      velY[i] = -velY[i];
    }
    if ( y[i] <= 0+r[i] ) {
      y[i] = 0+r[i];
      velY[i] = -velY[i];
    }
    //limites horizontales (comportamiento toroidal)
    if ( x[i] > width+r[i]  ) {
      x[i] = 0-r[i];
    }
    if ( x[i] < 0-r[i] ) {
      x[i] = width+r[i];
    }
  }
}
function dibujarElemento() {
  for ( let i=0; i<cantMostrar; i++ ) {
    //dibujo
    push();
    translate(x[i], y[i]);
    fill(col[i]);
    ellipse(0, 0, r[i]*2, r[i]*2);
    pop();
  }
}

function evaluarColisiones() {
  for ( let i=0; i<cantMostrar; i++ ) {
    if ( dist(xP, yP, x[i], y[i])< r[i]+rP ) {
      //aumento para mostrar uno mas:
      if (cantMostrar<cant) {
        cantMostrar++;
      }
      //hay colision:
      x[i]=random(r[i], width-r[i]);
      y[i]=random(r[i], height-r[i]);
      
      return; //el return sirve para detener la ejecucion de la funcion
    }
  }
}
