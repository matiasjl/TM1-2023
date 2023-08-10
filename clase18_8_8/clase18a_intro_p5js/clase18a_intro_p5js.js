let relleno = 0;           //como si fuera tipo "int"
let texto =  "Hola com2";  //como si fuera tipo "string"
let imagen;

function setup() {
  createCanvas( 600, 600 );  //reemplaza a la funcion size()
  print(texto);  //imprimo el contenido de la variale
}

function preload(){  //IMPORTANTE: precarga de las imagenes y archivos externos al codigo
  //imagen = loadImage("assets/cajapregunta.jpg");
  imagen = loadImage('assets/cajapregunta.jpg');
}

function draw() {
  background( relleno, 0, 0 );  //color del fondo, igual que processing
  image( imagen, 100, 100, 400, 400 );  //muestro la imagen, igual que processing
}

function mousePressed(){  //OJO que todas las funciones en p5js empiezan con function 
  relleno = random( 255 );
  
}
