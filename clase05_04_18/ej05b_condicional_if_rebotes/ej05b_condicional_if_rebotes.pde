
//condicionales1: if en keyPressed + limit animacion (comparadores)
//condicionales2: rebotes (logo dvd) + else
//condicionales3: módulo % para animar + porcentaje probabilidad random

//condicionales4: botones en mousePressed + dist + operadores
//condicionales5: logica de estados + swithc

int x = 100 ;
boolean debug;  //true or false
boolean izquierda;
int vel = 1;

void setup() { //CUANDO: una sola vez cuando se ejecuta el programa
  size( 800, 200 );
  
  debug = false;
  izquierda = true;
}

void draw() {  //CUANDO: 60 veces por segundo (promedio variable) despues del setup
  
  //dibujo
  background( 0 );
  fill( 255 );
  textAlign( CENTER, CENTER );
  textSize( 40 );
  text( "Hola Tecno1", x, 100 );
  
  //update1: limite a la derecha
  //if( x < 700 ){  //menor o igual a
  //  x++;
  //}
  
  //update2: rebotes  (calculos + movimient)
  if( x >= 700 ){  //borde derecha
    izquierda = true;
    vel++;  //cada rebota suma un punto de velocidad
  }
  if( x <= 100 ){  //borde izquierda
    izquierda = false;
    vel++;  //cada rebota suma un punto de velocidad
  }
  //
  if( izquierda ){
    x -= vel;
    // x = x - vel;
  } else {
    x += vel;
    // x = x + vel;
  }
  //if( izquierda == false ){
  //  x++;
  //}

  
  //debug
  if( debug ){
    textSize( 20 );
    textAlign( LEFT, CENTER );
    text( "izquierda: " + izquierda, 20, 25 );
    text( "x = " + x, 20, 50 );
    text( "vel = " + vel, 20, 75 );
  }
}

void keyPressed() {  //CUANDO: se presiona cualquier tecla del teclado
  debug = !debug;  //invertir el valor de la booleana
}

void mousePressed() {  //CUANDO: se presiona cualquier boton del mouse
 
}
