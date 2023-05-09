
// mis funciones personalizadas

void ojo( int x, int y ){
  
  pushStyle();  //--------------------
  //
  noStroke();
  fill( 255 );
  circle( x, y, 100 );
  fill( 0, 200, 200 );
  circle( x, y, 50 );
  fill( 0 );
  circle( x, y, 30 );
  //
  popStyle();  //--------------------
}

void ojo( int x, int y, float t, color iris ){
  
  pushStyle();  //--------------------
  //
  noStroke();
  fill( 255 );
  circle( x, y, t );  //100
  fill( iris );
  circle( x, y, t/2 );  //50
  fill( 0 );
  circle( x, y, t*0.3 );  //30  //t*0.3  //t/10*3
  //
  popStyle();  //--------------------
}

void gatito(){
  pushStyle();  //--------------------

  noStroke();
 
  //parte marrón
  fill(222,161,87);
  ellipse(155,235,260,200);
  
  
  //parte beige cuerpo
  fill(250,214,167,235);
  ellipse(245,250,210,170);
  
  //manchas
  noStroke();
  fill(214,142,54,200);
  ellipse(150,183,70,50);
  fill(180,114,33,250);
  ellipse(126,236,110,100);
  ellipse(196,255,80,50);
  
  //parte beige cabeza
  fill(250,214,167,255);
  stroke(247,235,212,100);
  ellipse(300,150,185,165);
  
  //piso
  //fill(245);
  //rect(-1,330,400,600); 
  
  //pata de atras
  stroke(247,235,212);
  fill(250,214,167);
  ellipse(175,325,70,45);
  
  //patas de adelante
  line(232,295,273,330);
  line(275,291,300,323);
  strokeWeight(3);
  line(320,312,307,293);
  ellipse(320,326,50,40);
  ellipse(292,326,55,45);
  
  //oreja izq
  noStroke();
  bezier(274,77,268,51,246,40,226,42);
  triangle(226,42,274,77,234,98);
  bezier(226,42,216,71,212,91,234,98);
  
  //oreja der
  noStroke();
  bezier(328,78,327,59,347,45,372,42);
  triangle(372,42,369,98,328,78);
  bezier(372,42,380,68,385,90,369,98);
  
  //ojo izq
  strokeWeight(2);
  stroke(55);
  fill(227,153,124);
  bezier(276,132,278,114,273,109,252,115);
  bezier(276,132,257,141,245,129,252,115);
  noStroke();
  fill(65,113,2);
  ellipse(264.3,124.5,23,20);
  fill(0);
  ellipse(264.3,124.5,11,16);
  
  
  //ojo der
  strokeWeight(2);
  stroke(55);
  fill(227,153,124);
  bezier(329,132,324,114,339,109,353,115);
  bezier(329,132,354,140,354,129,353,115);
  noStroke();
  fill(65,113,2);
  ellipse(341.3,124.5,23,20);
  fill(0);
  ellipse(341.3,124.5,11,16);
  
  //nariz
  fill(193,157,109);
  triangle(290,160,310,160,300,175);
  stroke(185,155,114);
  noFill();
  strokeWeight(2);
  bezier(300,174,301,185,276,195,264.3,186);
  bezier(300,174,299,185,320,195,336,186);
  
  //boca
  fill(193,157,109);
  bezier(290,187,285,190,314,190,309,187);
  
  //bigotes izq
  noFill();
  stroke(255);
  bezier(284,176,275,156,214,139,200,162);
  bezier(274,173,261,152,216,160,207,187);
  bezier(278,179,257,161,226,164,214,186);
  bezier(270,180,260,170,227,190,222,209);
  
  //bigotes der
  bezier(320,174,330,160,385,157,395,174);
  bezier(311,179,325,163,373,164,386,185);
  bezier(322,182,340,166,383,177,384,194);

  popStyle();  //--------------------

}
