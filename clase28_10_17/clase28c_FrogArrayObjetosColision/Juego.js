
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
  }

  // Realizo los calculos necesarios
  actualizar() {
    // llamar los metodos actualizar de mis objetos
    for ( let i = 0; i < 10; i++ ) {
      this.autos[i].actualizar();
    }
    
    // --------------------------------------------------------------------------------------
    //UPDATE: llamo al evento colision de la clase Frog y le paso como param el array de Auto
    this.rana.calcularColision( this.autos );
    // y consulto si quedan cero vidas pierdo el juego (con una funcion que devuelve ese valor)
    if( this.rana.getVidas() == 0 ){
      // estado == "perdiste"
    }
    // --------------------------------------------------------------------------------------
  }

  // Dibujo el objeto en pantalla (ojo orden dibujo)
  dibujar() {

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
  }

  teclado() {
    this.rana.moverTeclas( keyCode, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW );
  }
}
