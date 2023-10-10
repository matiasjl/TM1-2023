
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
    //llamo al metodo de calculo de colision
    //this.calcularColision();
    this.calcularColisionConTodos();
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
    
    //proyecto las colisiones
    this.dibujarLineaColision();
  }

  teclado() {
    this.rana.moverTeclas( keyCode, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW );
  }
  
  //relacion entre clases/objetos
  calcularColision(){
    //dist( x.rana, y.rana, x.auto, y.auto ) < tamanoZ )
    let distanciaReal = dist( this.rana.getX(), this.rana.getY(), this.autos[0].getX(), this.autos[0].getY() );
    let distanciaChoque = 50;  //calibrar
    //
    //determino si la colision se produce
    if( distanciaReal < distanciaChoque ){
      //vuelvo la rana a la posicion original
      this.rana.reiniciarPosicion();
    }
  }

  //relacion entre clases/objetos con ARRAYS
  calcularColisionConTodos(){
    for( let i = 0; i < this.autos.length ; i++ ){  // this.autos.length = 10
      //dist( x.rana, y.rana, x.auto, y.auto ) < tamanoZ )
      let distanciaReal = dist( this.rana.getX(), this.rana.getY(), this.autos[i].getX(), this.autos[i].getY() );
      let distanciaChoque = 70;  //calibrar
      //
      //determino si la colision se produce
      if( distanciaReal < distanciaChoque ){
        //vuelvo la rana a la posicion original
        this.rana.reiniciarPosicion();
      }
    }   
  }
  
  dibujarLineaColision(){
    for( let i = 0; i < this.autos.length ; i++ ){  // this.autos.length = 10
      push();
      stroke( 200, 2000, 0 );
      this.i = dist( this.rana.getX(), this.rana.getY(), this.autos[i].getX(), this.autos[i].getY() );
      strokeWeight( i );
      line( this.rana.getX(), this.rana.getY(), this.autos[i].getX(), this.autos[i].getY() );
      pop();
    }   
  
  }
  
}
