//creo mi array para mis imagenes
let mb = [];
//defino la cantidad de imagenes del sprite
let c = 3;
//defino una variable para seleccionar la imagen a mostrar
let s = 0;
//defino un color de fondo
let relleno = 200 ;

function setup() {
  createCanvas( 1000, 600 );
}


function draw() {
  background( relleno );
  image( mb[s], 0, 0 );

  //actualizo y limito --> EN EL DRAW SIN OTRA CONDICION = SIEMPRE/CONSTANTE
  /*
   if( frameCount%20 == 0 ){  //MUY APROX 3 x segundo
   s++;
   }
   if( s == c ){
   s = 0;
   }
   */

  console.log( frameRate() );

  //estratagia para consultar si presione teclado en el draw
  if ( keyIsPressed ) {
    if ( frameCount%20 == 0 ) {  //MUY APROX 3 x segundo
      s++;
    }
    if ( s == c ) {
      s = 0;
    }
  }
}

function keyPressed() {  //se ejecuta solo al presionar la tecla, no se ejecuta mientras se mantiene presionado
  //background( random(255) );  //PEOR ERROR ahahahha
  relleno = random(255);
}
