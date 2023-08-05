/*
 Condiciones para aprobar

 TP2: I - TP3: I -> Queda Irregular, Perdiendo la materia.
 TP2: I - TP3: D -> Entregar en el recuperatorio TP2 y TP3
 TP2: D - TP3: I -> Entregar en el recuperatorio TP2 y TP3
 TP2: D - TP3: D -> Entregar en el recuperatorio TP2 y TP3
 TP2: I - TP3: A -> Entregar en el recuperatorio TP2
 TP2: D - TP3: A -> Entregar en el recuperatorio TP2
 TP2: A - TP3: I -> Entregar en el recuperatorio TP3
 TP2: A - TP3: D -> Entregar en el recuperatorio TP3
 TP2: A - TP3: A -> No va a Recuperatorio
 
 */
 
void setup(){
  println( condicionT1( 'A', 'A' ) );
}

String condicionT1 ( char tp2, char tp3 ) {
  String r = "";
  if (tp2 == 'I' && tp3 == 'I') {
    r = "Quedaste irregular, perdiste la materia :(";
  } else if (tp2 == 'A' && tp3 == 'A' ) {
    r = "No vas a recuperatorio :D";
  } else if ( ( tp2 == 'D' || tp2 == 'I' ) &&
              ( tp3 == 'D' || tp3 == 'I' ) ){
    r = "Recuperás ambos trabajos prácticos";
  } else if ( ( tp2 == 'I' || tp2 == 'D' ) && tp3 == 'A' ){
    r = "Recuperás sólo el TP2";
  } else if ( ( tp3 == 'I' || tp3 == 'D' ) && tp2 == 'A' ){
    r = "Recuperás sólo el TP3";
  }
  return r;
}
