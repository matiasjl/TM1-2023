
// 1) DECLARO UN OBJETO DE MI CLASE
let ranita;
let otra;

//let auto1;
let autos = [];

function setup() {
  createCanvas( 600, 600 );
  
  // 2) INICIALIZO EL OBJETO: el new llama al constructor de la clase
  ranita = new Frog( 50 );
  otra = new Frog( 50 );
  
  //auto1 = new Auto( 50 );
  for( let i = 0 ; i < 10 ; i++ ){
    autos[i] = new Auto( i*50 + 50 );  //* = salto // + = corrimiento
  }
  
}

function draw() {
  background( 255 );
  
  // 3) LLAMO A LOS METODOS DEL OBJETO: son los declarados en la clase
  ranita.dibujar();
  otra.dibujar();
  
  
  //auto1.actualizar();
  //auto1.dibujar();

  for( let i = 0 ; i < 10 ; i++ ){
    autos[i].actualizar();
    autos[i].dibujar();
  }

}

function keyPressed(){
  // 3) LLAMO A LOS METODOS DEL OBJETO: son los declarados en la clase
  ranita.moverTeclas( key, 'w', 's', 'a', 'd' );
  otra.moverTeclas( keyCode, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW );
}
