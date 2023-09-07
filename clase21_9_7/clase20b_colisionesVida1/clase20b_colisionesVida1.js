
/* Cosas trabajadas:
  
  - imageMode(CENTER); para coincidir las imagenes con las zonas de colision
  - modo debug, para poder visualizar las variables, ejemplo donde se están produciendo las colisiones (o cualquier otra cosa)
  - "vida" u otros contadores que se siguen sumando indefinidamente: estragia #1 cambiar posicion del enemigo
  
*/

let x1, y1, x2, y2, p1, p2;
let debug = false;

let vida;  //esta es la variable que va a sumar CUANDO COLISIONO

function setup() {
  createCanvas( 800, 600 );
  imageMode( CENTER ); // <--- IMPORTANTISIMO PARA LAS COLISIONES CORRECTAS
  textSize( 50 );
  
  x1 = width/2;
  y1 = height/2;
  
  vida = 10;
}


function draw() {
  background( 200 );
  
  //actualizo variables del personaje
  x2 = mouseX;
  y2 = mouseY;
  
  //dibujo los elementos en escena
  if( debug ){
    push();
    if( dist( x1, y1, x2, y2 ) < 100 ){  //evaluo la colision !!!!!!!!!!!!!
      fill( 200, 0, 0, 50 );
      stroke( 200, 0, 0, 50 );
    }else{
      fill( 0, 0, 200, 50 );
      stroke( 0, 0, 200, 50 );    
    }
    strokeWeight( 5 );
    ellipse( x1, y1, 100, 100 );
    ellipse( x2, y2, 100, 100 );
    line( x1, y1, x2, y2 );
    pop();
  }
  
  // calculo de colisiones --> IMPORTANTE ESTA PARTE DEL CODIGO
  if( dist( x1, y1, x2, y2 ) < 100 ){
    vida = vida - 1;
    x1 = random(width);  //al momento de colisionar, cambio la posicion del "enemigo"
    y1 = random(height);
  }
  
  // visualizo los dibujos en pantalla
  image( p1, x1, y1, 120, 120 );
  image( p2, x2, y2, 120, 120 );
  // GUI
  text( vida, 50, 50 );
  if( vida == 0 ){
    text( "PERDISTE", width/2, height/2 );
    noLoop();
  }
}

function preload(){
  p1 = loadImage("assets/estrella.png");
  p2 = loadImage("assets/estrella.png");
}

function keyPressed(){
  if( key == ' ' ){
    debug = !debug;
  }
}
