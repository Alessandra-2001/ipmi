//Angiolillo, Alessandra
//Comisión 1
PImage imagen1;
PImage imagen2; 
PImage imagen3;
PFont t;
String titulo;
String sinopsis;
String data;

int posY;
int posX;
int posY2;
int posY_sinopsis;
int posY_data;

boolean mostrarBotonReiniciar;
boolean reiniciar;

int botonX;
int botonY;
int botonAncho;
int botonAlto;
int contadorParaBoton;

boolean mostrarPantalla1;
boolean mostrarPantalla2;
boolean mostrarPantalla3;

float opacidadImagen1;


void setup() {
  size(640, 480);
  imagen1 = loadImage("perfume.jpg");
  imagen2 = loadImage("alpacino.jpg");
  imagen3 = loadImage("perfume2.jpg");
  t = loadFont("perpetua.vlw");
  textFont(t, 35);

  titulo = "Perfume\n   de   \n mujer";
  sinopsis = "Un excoronel invidente\nlleva a su joven guía\na pasar una aventura maravillosa en Nueva York\ny enseñarle los placeres de la vida";
  data = "Al Pacino ganó su único premio Óscar en 1993,\npor interpretar al Teniente Coronel Frank Slade";
  
  posY = 500;
  posX = 400;
  posY2 = 500;
  posY_sinopsis = -100;
  posY_data = -100;
  mostrarBotonReiniciar = false;
  reiniciar = false;
  botonX = 250;
  botonY = 400;
  botonAncho = 140;
  botonAlto = 40;
  contadorParaBoton = 0;
  mostrarPantalla1 = true;
  mostrarPantalla2 = false;
  mostrarPantalla3 = false;
  opacidadImagen1 = 0;
}

void draw() {
  background(0);

  if (reiniciar) {
    posY = 500;
    posX = 400;
    posY2 = 500;
    posY_sinopsis = -100;
    posY_data = -100;
    opacidadImagen1 = 0;
    contadorParaBoton = 0;

    mostrarPantalla1 = true;
    mostrarPantalla2 = false;
    mostrarPantalla3 = false;
    mostrarBotonReiniciar = false;

    reiniciar = false;
  }

//Primera pantalla
  if (mostrarPantalla1) {
    if (opacidadImagen1 < 255) {
      opacidadImagen1 += 2;
    }
    tint(255, opacidadImagen1);
    image(imagen1, 0, 0);
    noTint();

    textAlign(LEFT, BASELINE);
    text(titulo, 220, posY);
    if (posY > 200) posY--;

    textSize(35);
    float tono = map(posY, 500, 200, 0, 255);
    fill(255, tono);

    if (posY <= 200 && opacidadImagen1 >= 255) {
      mostrarPantalla1 = false;
      mostrarPantalla2 = true;
    }
  }

//Segunda pantalla
  else if (mostrarPantalla2) {
    image(imagen3, 0, 0);
    float opacidad = map(posX, 400, 0, 0, 255);
    if (posX > 0) posX--;

    fill(255, opacidad);
    textSize(15);
    textAlign(LEFT, BASELINE);

    if (posY_sinopsis < 400) posY_sinopsis += 3;
    text(sinopsis, 90, posY_sinopsis);

    if (posX <= 0 && posY_sinopsis >= 400) {
      mostrarPantalla2 = false;
      mostrarPantalla3 = true;
    }
  }

//Tercera pantalla
  else if (mostrarPantalla3) {
    image(imagen2, 0, 0);
    float tres = map(posY2, 500, 100, 0, 255);
    if (posY2 > 100) posY2--;
    fill(255, tres);
    textSize(15);
    textAlign(LEFT, BASELINE);

    int textoFinalY = 330; //Variable local
    
    if (posY_data < textoFinalY) {
      posY_data += 3;
    }

    text(data, 90, posY_data);

//Cuando baja el texto final, después de 3 segundos, aparece el botón

    if (posY_data >= textoFinalY) {
      contadorParaBoton++; 
    }

    if (contadorParaBoton > 180) { 
      mostrarBotonReiniciar = true;
    }
  }

//Botón Reiniciar
  if (mostrarBotonReiniciar) {
    fill(0, 255, 0);
    rect(botonX, botonY, botonAncho, botonAlto, 10);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
  }
}

void mousePressed() {
  if (mostrarBotonReiniciar &&
      mouseX > botonX && mouseX < botonX + botonAncho &&
      mouseY > botonY && mouseY < botonY + botonAlto) {
    reiniciar = true;
  }
}
