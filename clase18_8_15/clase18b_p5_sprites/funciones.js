//ejemplo pestañas = nuevo archivo js

//estafuncion es obligatoria para pre-cargar archivos externos como: imagenes, sonidos, tipos, etc
function preload(){
  for( let i = 0 ; i < c ; i++ ){
    mb[i] = loadImage("assets/mb0"+i+".png");  //.png acepta canal alpha(transparencia) y .jpg NO ACEPTA
  }
}
