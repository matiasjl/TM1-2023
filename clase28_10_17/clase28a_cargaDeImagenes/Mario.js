class Mario{

  constructor( imgArray ){
    // asigno el input a una propiedad de la clase
    this.sprite = imgArray;
  }
  
  //dibujar(){
  //  image( mb[0], 100, 100 );  //ERROR: llamo a una variable global
  //}

  dibujarConParam( imgArray ){
    image( imgArray[frameCount%3], 200, 100 );  //CORRECTO: uso parametros para utilizar la variable global
  }

  dibujarConPropiedad(){
    image( this.sprite[frameCount%3], 200, 100 );  //CORRECTO: uso parametros para utilizar la variable global
  }

}
