class Auto {

  constructor( y ){
    this.x = int( random(-200, -500 ) );
    this.y = y;
    this.t = 40;
  }
  
  actualizar(){
    this.x++;  //misma velocidad porque =+1
    if( this.x >= width+this.t ){
      this.x = int( random(-200, -500 ) );  // se teletransporta al lado izquierdo
    }
  
  }
  
  dibujar(){
    fill( 200, 0, 0 );
    rect( this.x, this.y, this.t*2, this.t );
  }

}
