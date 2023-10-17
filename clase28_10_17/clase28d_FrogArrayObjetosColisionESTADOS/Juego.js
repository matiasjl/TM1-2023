
class Juego {

  // Creo e inicializo mis variables
  constructor() {
    // creo los objetos de mis otras clases
    this.rana = new Frog( 50 );
    this.autos = [];
    for ( let i = 0; i < 10; i++ ) {
      this.autos.push( new Auto( i*50 + 50 ) );
      //this.autos[i] = new Auto( i*50 + 50 );
    }
    // defino otras cosas???? Ejemplo propiedad PUNTAJE (VIDAS tiene sentido en Frog)
    // ...
    this.estado = "instrucciones";
  }

  // Realizo los calculos necesarios
  actualizar() {
    if ( this.estado == "jugando" ) {
      // llamar los metodos actualizar de mis objetos
      for ( let i = 0; i < 10; i++ ) {
        this.autos[i].actualizar();
      }
      // --------------------------------------------------------------------------------------
      //UPDATE: llamo al evento colision de la clase Frog y le paso como param el array de Auto
      this.rana.calcularColision( this.autos );
      // y consulto si quedan cero vidas pierdo el juego (con una funcion que devuelve ese valor)
      if ( this.rana.getVidas() == 0 ) {
        this.estado = "perdiste";
      }
      // --------------------------------------------------------------------------------------
    }
  }

  // Dibujo el objeto en pantalla (ojo orden dibujo)
  dibujar() {

    if ( this.estado == "instrucciones" ) {
      //objetivo y como jugar
      text( "Mueva la rana con las flechas del teclado", width/2, 100 );
      text( "esquivando los autos para llegar al otro lado", width/2, 130 );
      text( "PRESIONE CUALQUIER TECLA PARA COMENZAR", width/2, 200 );
      if ( keyIsPressed ) {
        this.estado = "jugando";
      }
    } else if ( this.estado == "jugando" ) {

      //dibujo las calles con primitivas (lineas blancas de 2px distanciadas de a 50px );
      push();
      background( 50 );
      //for( let i = 0 ; i < 10; i++ ){
      strokeWeight( 2 );
      stroke( 255 );
      for ( let y = 0; y < height; y+=50 ) {
        line( 0, y, width, y );
      }
      pop();

      //dibujo mis objetos con sus metodos
      this.rana.dibujar();

      for ( let i = 0; i < 10; i++ ) {
        this.autos[i].dibujar();
      }
    } else if ( this.estado == "ganaste" ) {
      background( 0, 200, 0 );
    } else if ( this.estado == "perdiste" ) {
      background( 200, 0, 0 );
    }
  }

  teclado() {
    if ( this.estado == "jugando" ) {
      this.rana.moverTeclas( keyCode, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW );
    }
  }
}
