class A {

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
    //rect( this.x, this.y + 5, this.t*2, this.t );
    ellipse( this.x, this.y, this.t, this.t );
    //debug velocidad
    //fill( 255 );
    //text( this.v, this.x, this.y+this.t/2 );
    pop();
  }
  
  getX(){
    return this.x;
  }
  getY(){
    return this.y;
  }
  
  lineaEntreObjetos( n ){  //n un dato tipo A(uto)
    //dibujo una linea entre este objeto y el objeto que entra por parametros
    line( this.getX(), this.getY(), n.getX(), n.getY() );
  }
  
  lineaEntreTodosLosObjetos( n ){  //n un ARRAY de tipo A(uto)
    //dibujo una linea entre este objeto y todos los otros objetos que entran en un arreglo via param
    for( let i = 0 ; i < n.length ; i++ ){
      let d = dist( this.getX(), this.getY(), n[i].getX(), n[i].getY() );
      if( d < 300 ){
        line( this.getX(), this.getY(), n[i].getX(), n[i].getY() );
      }
    }
  }

}
