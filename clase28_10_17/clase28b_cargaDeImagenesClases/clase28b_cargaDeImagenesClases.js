
// mi variable para mi objeto de la clase mario
let m;

function setup() {
  createCanvas( 600, 600 );
  
  m = new Mario();
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
