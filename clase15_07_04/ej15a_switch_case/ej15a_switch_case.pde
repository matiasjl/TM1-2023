
// explicación de case, como alternativa a if else if
// logica de estados --> codificación del diagrama de flujo

int estado;  //la variable maestra que maneja el programa
boolean apreteBotonMenu;

void setup(){
  
  estado = 9;  //0 es menu

}

void draw(){

  switch(estado){
    case 0:
      println( "estas en el menu" );
      //todas las lineas de codigo de la pantalla
      break;
    case 1:
      println( "P01" );
      //todas las lineas de codigo de la pantalla
      break;      
    case 2: 
      println( "P02" );
      //todas las lineas de codigo de la pantalla
      break;  
    case 3: 
      println( "P03" );
      //todas las lineas de codigo de la pantalla
      break;  
    case 7: 
      println( "P07" );
      //todas las lineas de codigo de la pantalla
      break;  
    default:  //sino se cumple ninguno de los "casos" (condiciones
      println("Fuera de la aventura");
      break;
  }
  
}

void mousePressed(){  //aca se programan los botones
  
  if( estado == 0 && apreteBotonMenu ){
    estado = 1;
  }

}
