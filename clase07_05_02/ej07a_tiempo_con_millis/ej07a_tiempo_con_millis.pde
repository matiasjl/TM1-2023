
// controlando el tiempo
// frameCount vs millis()

// millis()   // funcion que devuelve un dato tipo INT, que indica la cantidad de milisegundos desde que inicio el programa
// a esta funcion NO lo afecta el frameRate: es independiente del draw

int marcaEnElTiempo;
int estado;

void setup(){
  size( 100, 100 );
  //frameRate( 60 );  //frameRate bajo a proposito para ver como no es afectado millis()
  
  estado = 0;
}

void draw(){
  //println( millis() );         //milisegundos
  //println( millis() / 1000 );  //segundos
  
  //println( "el tiempo desde que inicio el programa es: " + millis() );
  //println( "el tiempo desde que presione la barra espaciadora es: " + ( millis() - marcaEnElTiempo ) );
  
  int diferenciaTemporal = millis() - marcaEnElTiempo;
  
  //maquina de estados
  if( estado == 0 ){  //ESTADO
    background( 0 );
    //
    if( diferenciaTemporal >= 3000 ){  //3 segundos  //EVENTO
      estado = 1;
      marcaEnElTiempo = millis();
    }
    //
  }else if (estado == 1 ){
    background(200, 0, 0 );  //rojo
    //
    if( diferenciaTemporal >= 5*1000 ){  //5 segundos
      estado = 2;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 2 ){
    background(0, 200, 0 );  //verde
    //
    if( diferenciaTemporal >= 7*1000 ){  //7 segundos
      estado = 3;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 3 ){
    background(0, 0, 200 );  //azul
    //
    if( diferenciaTemporal >= 10000 ){  //10 segundos
      estado = 4;
      marcaEnElTiempo = millis();      
    }   
    //
  }else{
    background( 255 );
  }
  
  println( millis() + " - " + marcaEnElTiempo + " = " + diferenciaTemporal );
}

void keyPressed(){
  if( key == ' ' ){
    marcaEnElTiempo = millis();
  }
  //diferenciaTemporal = 0;  // variable local del draw NO existe para el resto de los eventos
}

void mousePressed(){
}
