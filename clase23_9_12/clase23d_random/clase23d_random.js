
let contador = 0;
let aleatorios = [];
//let indice = 0;
let miNumRandom;

function setup() {
  createCanvas( 800, 600 );
  textSize( 24 );
  textAlign( LEFT, CENTER );
  
  // fuerzo a 30fps para poder calcular segundos
  frameRate( 30 );
  
  // guardo un valor aleatorio en una variable
  miNumRandom = random( 100 );
  // imprimo en consola javascript el random del setup
  console.log( random( 100 ) );
  console.log( miNumRandom );
    
}


function draw() {
  
  // actualizo la variable contador
  contador++;

  // visualizo frameCount
  rect( 0, 0, 100, 100 );
  text( frameCount, 50, 50 );
  
  
  // imprimo en pantalla los valores del arreglo
  for( let i = 0 ; i < aleatorios.length ; i ++ ){
    text( i + ": " + aleatorios[i], 200, 100+i*50 );
  }

}

function mousePressed(){
  // guardo un nuevo numero aleatorio en mi array
  //aleatorios[indice] = random( 100 );
  // incremento el indice para el proximo guardado
  //indice++;
  
  //ALTERNATIVA: agregar valores a mi arreglo con la funcion .push(valor)
  aleatorios.push( random( 100 ) );
  
  // imprimo en la consola todos los valores de mi array
  for( let i = 0 ; i < aleatorios.length ; i ++ ){
    console.log( i + ": " + aleatorios[i] );
  }
  console.log( "" );
}
