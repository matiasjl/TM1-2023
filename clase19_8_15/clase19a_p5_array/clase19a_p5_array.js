//declaro un arreglo y defino 5 posiciones
let nombres = new Array(5);

//declaro un arreglo pero NO le defino su dimension
let apellidos = [];  //los corchetes indican que es un arreglo

function setup() {
  createCanvas( 600, 600 );
  
  //mi arreglo que defini dimension 5, pero igual puedo sumarle mas D:
  nombres[0] = "Lisandro";
  nombres[1] = "Bianca";
  nombres[2] = "Matias";
  nombres[3] = "Camila";
  nombres[4] = "Josefina";
  // me salto 2 posiciones y funciona igual, la consola tira "undefined" (indefinido)
  nombres[7] = "septimo";  // 
  //
  nombres[9] = 1;
  
  //mi arreglo sin definir dimension
  apellidos[0] = "Jauregui Lorda";
  apellidos[1] = "Lorda";
  apellidos[2] = "Jauregui";
  
  for( let i = 0 ; i < 10 ; i++ ){
    console.log( nombres[i] );
  }
  console.log( "" );
  for( let i = 0 ; i < 5 ; i++ ){
    console.log( apellidos[i] );
  }
}

function draw() {
  ellipse( mouseX, mouseY, 10, 10 );
}
