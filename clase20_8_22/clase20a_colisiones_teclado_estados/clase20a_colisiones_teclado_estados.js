
//colisiones y bonotes son lo mismo!

let x1, y1;  //enemigo
let x2, y2;  //player
let x3, y3;  //boton
let estado = "menu";

function setup() {
  let miCanvas = createCanvas( 600, 600 );
  miCanvas.position( 50, 50 );  //posiciono el canvas en el DOM
  textSize( 40 );
  noStroke();

  //IMPORTANTISIMO: darle primer valor a las variables
  x1 = 0;
  y1 = 300;

  x2 = width/2;
  y2 = height;
}


function draw() {
  background( 50 );
  fill( 200 );

  if ( estado == "menu" ) {
    text( "MENU", 100, 100 );
    fill( 200, 0, 0 );
    circle( width/2, height/2, 100, 100 );

    //evento para cambiar el estado
    if ( mouseIsPressed ) {
      //mi boton
      if ( dist(width/2, height/2, mouseX, mouseY) < 50 ) {  //50 radio del circle
        estado = "juego";
      }
    }
  } else if ( estado == "juego" ) {
    text( "JUEGO", 100, 100 );

    //actualizo y dibujo el "enemigo"
    x1++;
    if ( x1 > width ) {
      x1 = 0;
      //TIP: podría ademas aumentar la velocidad
    }
    //
    push();
    fill(200, 0, 0 );
    circle( x1, y1, 50 );  //funciona con uno o dos param de tamaño
    pop();

    //actualizo y dibujo el "player"
    if ( keyIsPressed ) {  //si se mantiene presionado el teclado
      //if( keyCode == UP_ARROW ){  //si se presiona la flecha de arriba
      //if( keyIsDown(UP_ARROW) ){  //ALTERNATIVA PARA EL CONDICIONAL
      //  y2 -= 20;
      //}
      //if( keyCode == DOWN_ARROW ){  //si se presiona la flecha de arriba
      //  y2 += 20;
      //}
      //if( keyCode == LEFT_ARROW ){  //si se presiona la flecha de arriba
      //  x2 -= 10;
      //}
      //if( keyCode == RIGHT_ARROW ){  //si se presiona la flecha de arriba
      //  x2 += 10;
      //}
    }
    //
    push();
    fill(0, 200, 0 );
    circle( x2, y2, 100 );
    pop();

    //aca la colision ----------------------------
    if ( dist(x1, y1, x2, y2) < 75 ) {  //LA CONDICION PARA PERDER
      estado = "perdiste";
    }
    
    //ME FALTA UNA CONDICION PARA GANAR
    if( y2 <= 50 ){  //si toco el borde superior de la pantalla
       estado = "ganaste";
    }
    
  } else if ( estado == "perdiste" ) {
    text( "PERDISTE", 100, 100 );

  } else if ( estado == "ganaste" ) {
    text( "GANASTE", 100, 100 );

  }
}

function keyPressed() {  //cada vez que presiono el teclado
  //if ( keyCode == UP_ARROW ) {  //si se presiona la flecha de arriba
  if ( keyIsDown(UP_ARROW) ) {  //si se presiona la flecha de arriba
    y2 -= 20;
  }
  if ( keyIsDown(DOWN_ARROW) ) {  //si se presiona la flecha de arriba
    y2 += 20;
  }
  if ( keyCode == LEFT_ARROW && x2 > 50) {  //si se presiona la flecha de arriba
    x2 -= 10;
  }
  if ( keyCode == RIGHT_ARROW && x2 < width-50 ) {  //si se presiona la flecha de arriba
    x2 += 10;
  }
}
