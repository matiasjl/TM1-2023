
// mi arreglo para las imagenes del sprite
let mb = [];

// mi variable para mi objeto de la clase mario
let m;

function setup() {
  createCanvas( 600, 600 );
  
  m = new Mario( mb );       // parametro = lista
  //m = new Mario( mb[0] );  // parametro = contenido de la posicion 0 de una lista
  //m = new Mario( mb, 0 );  // parametros = una lista + un numero (para determinar posicion) 
}

function draw() {
  background( 255 );
  
  // test: funciona carga imagenes
  //image( mb[frameCount%3], mouseX, mouseY );
  
  // llamo el metodo de mi objeto m (clase Mario) el cual pide como parametro el array de imagenes: mb
  //m.dibujarConParam( mb );
  // llamo el metodo de mi objeto m (clase Mario) el cual usa la propiedad de la clase
  m.dibujarConPropiedad();
}

function preload(){
  // distintas maneras de agregar info a mi lista/array
  
  for( let i = 0 ; i < 3 ; i++ ){
    mb[i] = loadImage('assets/mb0'+i+'.png');
    //mb.push( loadImage('assets/mb0'+i+'.png') );
  }

  //mb.push( loadImage('assets/mb00.png') );
  //mb.push( loadImage('assets/mb01.png') );
  //mb.push( loadImage('assets/mb02.png') );

}
