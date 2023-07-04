
// explicación de case, como alternativa a if else if
// logica de estados --> codificación del diagrama de flujo

int estado;  //la variable maestra que maneja el programa
boolean apreteBotonMenu;

void setup(){
  size( 600, 600 );
  estado = 0;  //0 es menu
  
  apreteBotonMenu = true;

}

void draw(){
  switch(estado){
    case 0:
      background( 0 );  //serian sus imagenes partiendo de arreglos
      
      textSize( 40 );
      textAlign( LEFT, CENTER );
      fill( 255 );
      text( "Estado: " + estado, 100, 100 );  //serian sus textos del cuento
      
      //programar un over boton
      if( dist(mouseX,mouseY,300,400)<=50 ){
        fill( 200, 0, 0 );
      }else{
        fill( 200 );
      }
      circle( 300, 400, 100 );  //mi boton para empezar la aventura
      
      println( "estas en el menu" );
      break;
    case 1:
      background( 200,0,0 );
      
      textSize( 40 );
      textAlign( LEFT, CENTER );
      fill( 255 );
      text( "Estado: " + estado, 100, 100 );
      
      println( "P01" );
      break;      
    case 2: 
      background( 0,200,0 );
      fill( 200,200,0);
      rect(0,0,300,600);
      
      textSize( 40 );
      textAlign( LEFT, CENTER );
      fill( 255 );
      text( "Estado: " + estado, 100, 100 );
      
      println( "P02" );
      break;  
    case 3: 
      background( 0,0,200 );
      
      textSize( 40 );
      textAlign( LEFT, CENTER );
      fill( 255 );
      text( "Estado: " + estado, 100, 100 );
      
      println( "P03" );
      break;  
    case 7: 
      background( 0,200,200 );
      
      textSize( 40 );
      textAlign( LEFT, CENTER );
      fill( 255 );
      text( "Estado: " + estado, 100, 100 );
      
      println( "P07" );
      break;  
    default:  //sino se cumple ninguno de los "casos" (condiciones
      println("Fuera de la aventura");
      break;
  }
  
}

void mousePressed(){  //aca se programan los botones
  
  //circle( 300, 400, 100 );
  background( 255, 0, 0 );
  
  if( estado == 0 && dist(mouseX,mouseY,300,400)<=50 ){
    estado = 1;
  }else if( estado == 1 ){
    estado = 2;
  }else if( estado == 2 ){
    if( mouseX < width/2 ){  //mitad izquierda de la pantalla
      estado = 3;
    }
    if( mouseX > width/2 ){  //mitad derecha de la pantalla
      estado = 7;
    }
  }

}
