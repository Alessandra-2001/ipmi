//https://www.youtube.com/watch?v=lbnrjhG8R58
//Angiolillo Alessandra
//119680/0
//Comision 1
//Obra N°15

PImage image;
int cant = 17; //Cantidad de circulos enteros que se ven en primera fila y primera columna de la obra original
boolean mouseEnBoton = false;

void setup() {
  size(800, 400);
  image = loadImage("15.png");
}

void draw() {
  background(0);
  
  image(image, 0, 0);
  
  dibujarOpArt(410, 0, 400, 400); // (inicioX, inicioY, ancho, alto)
  dibujarBotonDeReinicio(400, 350, 120, 30); // (x, y, ancho, alto)
}

void dibujarOpArt(float inicioX, float inicioY, float ancho, float alto) {
  float paso = ancho / cant; //Calcula el espacio hay entre cada circulo
  float maxTam = paso + 10; //El tamaño max que va a tener el circulo (el espacio que hay entre cada circulo+10 pixeles)
  float margen = maxTam / 2; //Un margen para dibujar circulos pasando los bordes (se ve que en la obra original hay circulos cortados en los bordes)
  float radioDegrade = 80; //Radio (distancia) desde el centro donde aplico el efecto degrade
  float maxDist2 = (ancho / 2) * (ancho / 2) + (alto / 2) * (alto / 2); //La distancia max al cuadrado desde el centro al borde

//Cantidad de círculos a dibujar en horizontal y vertical teniendo en cuenta el margen
  int columnas = int((ancho + 2 * margen) / paso) + 1;
  int filas = int((alto + 2 * margen) / paso) + 1;
  
//////////Dos ciclos anidados hacen que se dibujen círculos en filas (j) y columnas (i)
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      
//Posiciones de cada circulo
      float x = -margen + i * paso;
      float y = -margen + j * paso;
      
//cx y cy son las coordenadas del círculo para calcular su distancia hacia el centro del área
//distCentro es la distancia desde el círculo al centro del área ((usando la función dist=(x1, y1, x2, y2) calcula la distancia entre dos puntos)) 
      float cx = x - ancho / 2;
      float cy = y - alto / 2;
      float distCentro = dist(ancho / 2, alto / 2, x, y);
      
/////////Para calcular el tamaño del círculo use map y asi establecer que mientras mas lejos del centro, más grande el circulo
//Para esto puse la distancia hacia el centro del area al cuadrado para que el tamaño cambie de una forma no tan brusca
//El tamaño va de 4 pixeles cuando esta mas cerca del centro y cuando se aleja aumenta al tamaño de la distancia que hay entre cada circulo+5. estos numeros los fui probando a ver cual quedaba mas parecido
      float tam = map(cx * cx + cy * cy, 0, maxDist2, 4, paso+5);
      
////////Para hacer el degradado desde el centro:
      if (distCentro <= radioDegrade) { //Si la distancia está dentro del radioDegrade, se aplica el efecto degradad
        float relacionDistancia = distCentro / radioDegrade;//es un número entre 0 y 1 que indica qué tan lejos del centro está el círculo
        float tono = map(relacionDistancia, 0, 1, 0, 255);//mapea ese valor para que el color vaya de negro (0) a blanco (255)
        float tamDegrade = map(relacionDistancia, 0, 1, 0, tam); //tamDegrade hace que el tamaño también cambie no tan brusco desde 0 hasta tam
        fill(tono);
        dibujarCirculo(inicioX + x, inicioY + y, tamDegrade); //funcion dibujarcirculo definida abajo
      } else {
        fill(255);
        dibujarCirculo(inicioX + x, inicioY + y, tam); //si el círculo está fuera del degradado se dibuja de color blanco con tamaño tam
      }
    }
  }
}


////////Función booleana para que me detecte el mouse del lado derecho donde está la obra recreada y que el evento funcione solo de ese lado
boolean estaEnDerecha() {
  return mouseX > 400;
}

//////Función booleana para detectar si el mouse está dentro del área del botón
boolean ZonaBoton(float x1, float y1, float x2, float y2) {
  return mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2;
}

///////Función propia para dibujar círculos y que al hacer click cambien de colores aleatorios
void dibujarCirculo(float x, float y, float tam) {
  pushMatrix();//fija posicion actual
  translate(x, y);//se mueven las coordenadas

  if (mousePressed && !mouseEnBoton  && estaEnDerecha()){//si el mouse está haciendo click y no está en el boton de reinicio
    fill(random(255), random(255), random(255));//pinta los circulos de colores aleatorios
  }

  noStroke(); //circulos sin borde
  ellipse(0, 0, tam, tam);
  popMatrix();//vuelve al push
}


////////Función propia para dibujar el botón
void dibujarBotonDeReinicio(float x, float y, float ancho, float alto) {
  if (ZonaBoton(x, y, x + ancho, y + alto)) {
    fill (0, 90, 0);
    mouseEnBoton = true;
  } else {
    fill (170, 0, 0);
    mouseEnBoton = false;
  }

  stroke(0);
  rect(x, y, ancho, alto, 10);

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(17);
  text("REINICIAR", x + ancho / 2, y + alto / 2);
}


///////Evento que con un click del mouse hace que funcione el botón volviendo a la cantidad de 17 circulos en ciclo y también dibuja más circulos si es que el mouse está a la derecha (donde arranca la obra recreada)
void mousePressed() {
  if (mouseEnBoton) {
    cant = 17;
  } else if (estaEnDerecha()) {
    if (cant < 60) {
      cant += 5;
    }
  }
}
