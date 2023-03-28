
//clase02 dibujando en processing
//funcion( param1, param2, ... );

//propiedas de primitivas 2d processing
//fill() --> color relleno
//stroke() --> color borde
//strokeWeight() --> grosor del borde
//
//noFill() --> sin relleno
//noStroke() --> sin borde

//COLOR EN CODIGO
//las funciones de color con:
//-- 1 param es ESCALA GRISIS
//-- 3 param es RGB (red, green, blue);

//se ejecuta una sola vez al comenzar el programa: "configuracion"
void setup() {
  size( 800, 400 );
  colorMode(RGB);  //seteo modelo color (por defecto RGB)
  //colorMode(HSB);

  //noStroke();
  //strokeWeight( 500 );
  stroke(0);
}

//se redibuja a 60fps (funciones de dibujo y tiempo real)
void draw() {
  //background( 200 );
  background( 20, 230, 230 );  //rgb celeste cielo
  //background(#1E5393);  //hexa prohibido tp0 ahahah

  //muñeco
  fill(255);
  strokeWeight(1);
  circle( 400, 300, 120 );
  circle( 400, 220, 50*2 );
  ellipse( 400, 150, 80, 80 );  //cabeza

  //cara
  fill( 0 );
  circle( 400-20, 135, 10 );   //ojo izquierdo
  circle( 400+20, 135, 10 );   //ojo derecho
  triangle(390, 150, 410, 150, 400, 170); //nariz

  //brazos
  strokeWeight(5);
  line(350, 220, 250, 170);
  line(450, 220, 550, 170);


  //noLoop();  //frena el draw
}
