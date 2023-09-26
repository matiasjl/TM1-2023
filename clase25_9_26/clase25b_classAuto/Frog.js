class Frog {

  // CONSTRUCTOR: la funcion que inicializa el objeto (primer metodo que se llama: "el setup de la clase")
  // Nota: NO lleva la palabra function delante del mismo, SI lleva parentes () y llaves {}
  constructor( t ) {
    // Declaro mis propiedades/variables y les asigno valor
    // IMPORTANTE: las variables de la clase siempre llevan el prefijo: this.NOMBREVARIABLE
    this.tam = t;
    this.x = width / 2;
    this.y = height - this.tam/2;
    this.c = random( 200 );
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
    if( tecla == arriba ){
      //this.y -= this.tam;
      this.y = this.y - this.tam;
    }else if( tecla == abajo ){
      this.y += this.tam;
    }else if( tecla == izquierda ){
      this.x -= this.tam;
    }else if( tecla == derecha ){
      this.x += this.tam;
    }
  }

  
  // METODO para dibujar mi ranita en pantalla (graficacion)
  dibujar(){
    push();  //buena practica cuando trabajamos con clases/objetos
    fill( this.c );
    ellipse( this.x, this.y, this.tam );
    pop();
  }
  
  cambiarTamano( tam ){
    this.tam = tam;
  }
  
  //moverDerecha(){
  //
  //}
}
