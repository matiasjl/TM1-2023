class Auto {

  constructor( y ){
    this.x = int( random(-200, -500 ) );
    this.y = y;
    this.t = 40;
    this.v = random( 1, 5 );
  }
  
  actualizar(){
    //this.x++;  //misma velocidad porque =+1
    this.x = this.x + this.v;  // this.x += this.v;
    
    // "metodo" para reciclar
    if( this.x >= width+this.t ){
      // reinicio la posicion en x
      this.x = int( random(-200, -500 ) );  // se teletransporta al lado izquierdo
      // establezco una nueva velocidad
      this.v = random( 1, 5 );
    }
  
  }
  
  dibujar(){
    push();  //buena practica cuando trabajamos con clases/objetos
    fill( 200, 0, 0 );
    rect( this.x, this.y + 5, this.t*2, this.t );
    //fill( 255 );
    //text( this.v, this.x, this.y+this.t/2 );
    pop();
  }

}
