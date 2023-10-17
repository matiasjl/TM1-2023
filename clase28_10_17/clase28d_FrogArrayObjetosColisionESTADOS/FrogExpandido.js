class Frog {

  // CONSTRUCTOR: la funcion que inicializa el objeto (primer metodo que se llama: "el setup de la clase")
  // Nota: NO lleva la palabra function delante del mismo, SI lleva parentes () y llaves {}
  constructor( t ) {
    // Declaro mis propiedades/variables y les asigno valor
    // IMPORTANTE: las variables de la clase siempre llevan el prefijo: this.NOMBREVARIABLE
    this.tam = t;
    this.x = width / 2;
    this.y = height - this.tam/2;
    this.c = random( 100, 200 );
    
    // NEW: vidas
    this.vidas = 3;
  }

  // Declaro las funciones de mi clase
  // IMPORTANTE: NO lleva [function], y los parametros NO llevan [let]

  // METODO para actualizar la posicion de mi ranita (sus variables)
  // COMENTAMOS este código para hacerlo con teclas personalizadas en el siguiente
  //moverFlechas( tecla ) {
  //  if( tecla == UP_ARROW ){
  //    //this.y -= this.tam;
  //    this.y = this.y - this.tam;
  //  }else if( tecla == DOWN_ARROW ){
  //    this.y += this.tam;
  //  }else if( tecla == LEFT_ARROW ){
  //    this.x -= this.tam;
  //  }else if( tecla == RIGHT_ARROW ){
  //    this.x += this.tam;
  //  }
  //}

  // METODO ATERNATIVO para actualizar la posicion de mi ranita (sus variables)
  moverTeclas( tecla, arriba, abajo, izquierda, derecha ) {
    if ( tecla == arriba ) {
      //this.y -= this.tam;
      this.y = this.y - this.tam;
    } else if ( tecla == abajo ) {
      this.y += this.tam;
    } else if ( tecla == izquierda ) {
      this.x -= this.tam;
    } else if ( tecla == derecha ) {
      this.x += this.tam;
    }
  }


  // METODO para dibujar mi ranita en pantalla (graficacion)
  dibujar() {
    push();  //buena practica cuando trabajamos con clases/objetos
    fill( this.c );
    ellipse( this.x, this.y, this.tam*0.8 );
    fill( 0 );
    text( this.vidas, this.x, this.y );
    pop();
  }

  cambiarTamano( tam ) {
    this.tam = tam;
  }

  //moverDerecha(){
  //
  //}

  // --------------------------------------------------------------------------------------
  calcularColision( enemigos ) {  //pido como param un arreglo de objetos de la clase Auto
    let distanciaColision = 70 ;
    for ( let i = 0; i < enemigos.length; i++ ) {  //recorro cada posicion de la lista
      let distanciaAutoRama = dist( this.x, this.y, enemigos[i].x, enemigos[i].y );
      //
      if ( distanciaAutoRama < distanciaColision ) {
        // reinicio posicion
        this.x = width / 2;
        this.y = height - this.tam/2;
        // le quito una vida
        this.vidas--;
      }
    }
  }
  getVidas(){
    return this.vidas;
  }
  // --------------------------------------------------------------------------------------
}
