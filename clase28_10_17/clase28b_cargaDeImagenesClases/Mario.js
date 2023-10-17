class Mario {

  constructor() {
    // intento de carga de imagenes SIN preload
    this.mb = [];  //arreglo
    this.miPreload();  //carga de imagenes
  }

  dibujarConPropiedad() {
    image( this.mb[frameCount%3], 200, 100 );  //CORRECTO: uso parametros para utilizar la variable global
  }

  miPreload() {
    for ( let i = 0; i < 3; i++ ) {
      this.mb.push( loadImage('assets/mb0'+i+'.png') );
    }
  }
}
