

void setup(){
  size(400, 400 );
  noFill();
  strokeWeight( 10 );
}

void draw(){
  background( 128 );
  
  //v0 sin for
  //circle( width/2, height/2, 350 );
  //circle( width/2, height/2, 300 );
  //circle( width/2, height/2, 250 );
  //circle( width/2, height/2, 200 );
  //circle( width/2, height/2, 150 );
  //circle( width/2, height/2, 100 );
  //circle( width/2, height/2, 50 );
  //circle( width/2, height/2, 10 );
  
  //sintaxis del libro
  //for(iniciador ; condición-booleana ; actualización){
    //acciones;
  //}
  
  //v1
  //for( int i = 0 ; i < 8 ; i++){
  //  circle( random(400), random(400), random(400) );
  //}
  
  //v2
  //for( int i = 0 ; i < 8 ; i++){
  //  circle( width/2, height/2, i*50 );  // i = 0, 1, 2, 3...7
  //}
  
  //v3
  //for( int i = 0  ; i < 400 ; i+=50 ){
  //  circle( width/2, height/2, i );  // i = 0, 50, 100, 150... 350
  //}

  //v3
  for( int i = 0  ; i < 400 ; i+=50 ){
    circle( width/2, height/2, i );  // i = 0, 50, 100, 150... 350
    if( i == 0 ){
      circle( width/2, height/2, 10 );
    }
  }
  
  //noLoop();  //frena el draw
}
