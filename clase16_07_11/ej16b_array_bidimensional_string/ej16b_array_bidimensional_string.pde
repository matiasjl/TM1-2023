
//matrices con String para tp3

String[][] textos = new String[2][6];
int c = 0;

void setup(){
  
  size( 600, 400 );
  textAlign( LEFT, TOP );

  //posicion 0 del primer "eje" corresponde al titulo
  //posicion 1 del primer "eje" corresponde al texto
  textos[0][0] = "Parte 1: Nacimiento desafortunado";
  textos[0][1] = "Parte 2: En busca de su lugar";
  textos[0][2] = "Parte 3: Encuentro con los cisnes";
  textos[0][3] = "Parte 4: La revelación";
  textos[0][4] = "Parte 5: La aceptación de sí mismo";
  textos[0][5] = "Parte 6: Final feliz";

  //para los textos, misma "fila" distinta "columna"
  textos[1][0] = "Un patito diferente y feo es rechazado por los demás debido a su apariencia. Lucha por encajar, pero se siente solo y despreciado.";
  textos[1][1] = "El patito emprende un viaje en busca de su identidad. Encuentra refugio, pero es rechazado una y otra vez. La tristeza lo acompaña.";
  textos[1][2] = "El patito llega a un estanque y se encuentra con una bandada de cisnes. Aunque se siente inferior, los cisnes lo aceptan.";
  textos[1][3] = "El patito se mira en el agua y descubre que ha crecido y se ha convertido en un hermoso cisne. Su verdadera identidad se revela.";
  textos[1][4] = "El patito comprende que nunca fue feo, sino un cisne joven. Acepta su belleza interior y exterior.";
  textos[1][5] = "El patito encuentra la felicidad y aceptación entre los cisnes. Su historia enseña que la verdadera belleza yace dentro de cada uno de nosotros.";
}

void draw(){
  background( 0 );
  
  //titulo
  textSize( 32 );
  text( textos[0][c], 50, 50 );
  //texto
  textSize( 20 );
  text( textos[1][c], 50, 100, 300, 250 );
}

void keyPressed(){
  if( key == ' ' ){
    c++;
    if( c == 6 ){
      c = 0; 
    }
  } 
}
