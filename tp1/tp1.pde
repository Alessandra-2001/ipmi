PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage("bellota.jpg");
}

void draw(){
  background(97, 215, 69);
  image(miImagen, 0, 0, 400, 400);

  //linea divisoria
  line(400,0,400,400);
  line(width/2, 0, width/2, 400);
  
 
  
  
  //brazo2
  fill(252, 197, 186);
  stroke(0);
  strokeWeight(4);
  ellipse(400+234, 245, 30, 80);
  
  
  //vestido
  fill(167, 218, 117);
  stroke(0);
  strokeWeight(4);
  quad(400+174,223, 400+162,295, 400+236, 294, 400+226, 221);
  
  
  //franja negra
  fill(0);
  stroke(0);
  strokeWeight(1);
  quad(400+172, 247, 400+167, 274, 400+232, 273, 400+227, 247); 
  
      //brazo1
  fill(252, 197, 186);
  stroke(0);
  strokeWeight(4);
  ellipse(400+166, 245, 30, 85);
  
  //PELO detras de la cara
    fill(0);
  stroke(0);
  strokeWeight(4);
  ellipse(400+196, 120, 245, 190);
 
  
  //cara
  fill(252, 197, 186);
  stroke(0);
  strokeWeight(4);
  ellipse(400+196, 125, 245, 190);
  
  //ojo blanco
  fill(255, 255, 255);
  stroke(0);
  strokeWeight(2);
  ellipse(400+138, 128, 125, 125);
  
  //ojos verdes
  fill(167, 218, 117);
  noStroke();
  ellipse(400+149, 125, 105, 110);
  
  //ojos negros
   fill(0, 0, 0);
  noStroke();
  ellipse(400+157, 122, 85, 90);
  
   //pupilas blancas
   fill(255);
  noStroke();
  ellipse(400+167, 122, 30, 38);
  

  
  
  
  
  ///otro ojo 
  
    //ojos blanco
   fill(255, 255, 255);
  stroke(0);
  strokeWeight(2);
  ellipse(400+275, 120, 85, 115);
  
   //ojos verdes
  fill(167, 218, 117);
  noStroke();
  ellipse(400+272, 118, 80, 115);
  
 
   //ojos negros
   fill(0, 0, 0);
  noStroke();
  ellipse(400+272, 119, 84, 90);
  
   //ojos negros2
   fill(0, 0, 0);
  noStroke();
  ellipse(400+262, 101, 60, 55);
  
   //ojos negros3
   fill(0, 0, 0);
  noStroke();
  ellipse(400+260, 110, 60, 55);
  
//pupila blanca
 fill(255);
  noStroke();
  ellipse(400+263, 119, 30, 38);
  
 
  
  //zapatos1
  fill(0, 0, 0);
  stroke(0);
  strokeWeight(2);
  ellipse(400+181, 354, 40, 50);
  
    //zapatos2
  fill(0, 0, 0);
  stroke(0);
  strokeWeight(2);
  ellipse(400+217, 352, 40, 55);
  
  //media1
   fill(255, 255, 255);
  stroke(255);
  strokeWeight(1);
  ellipse(400+181, 347, 20, 20);
  
   //media2
   fill(255, 255, 255);
  stroke(255);
  strokeWeight(1);
  ellipse(400+220, 347, 20, 20);

  //pantalones
  fill(255, 255, 255);
  stroke(0);
  strokeWeight(3);
  rect(400+162, 296, 75, 50);
  
  //linea media pantalon
  line(400+200, 298, 400+200, 345);
  stroke(0);
  strokeWeight(3);
  
  
   
  //pelo
  //flequillo
  fill(0);
  noStroke();
  quad(400+94, 65, 400+87, 79, 400+198, 79, 400+206, 30);
  
 fill(0);
  noStroke();
  quad(400+244, 34, 400+310, 79, 400+226, 79, 400+206, 33);
  
  fill(0, 0, 0);
  noStroke();
  ellipse(400+160, 50, 40, 30);
  
  fill(0, 0, 0);
  noStroke();
  ellipse(400+170, 60, 20, 20);
  
  fill(0, 0, 0);
  noStroke();
  ellipse(400+140, 60, 65, 30);
  
  fill(0, 0, 0);
  noStroke();
  triangle(400+53, 89, 400+75, 142, 400+79, 93);
  
  fill(0, 0, 0);
  noStroke();
  triangle(400+326, 62, 400+304, 75, 400+315, 110);
  
    fill(0);
  noStroke();
 triangle(594, 30, 537, 43, 587, 46);
 
  line(534, 38, 570, 29);
  stroke(0);
  strokeWeight(5);
  
  
  point(538, 42);
  stroke(0);
  strokeWeight(10);
  
   
  point(594, 31);
  stroke(0);
  strokeWeight(3);
  
   point(571, 30);
  stroke(0);
  strokeWeight(5);
  
    
   point(569, 34);
  stroke(0);
  strokeWeight(5);
  
  
   point(542, 43);
  stroke(0);
  strokeWeight(5);
  
    fill(0);
  noStroke();
 triangle(492, 91, 491, 74, 554, 77);
 
     fill(0);
  noStroke();
 triangle(491, 78, 494, 89, 479, 96);
 
 line(579, 30, 554, 35);
  stroke(0);
  strokeWeight(20);
 
    point(571, 35);
  stroke(0);
  strokeWeight(2);
  
 
  
  //boca
  fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+202, 174);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+202, 175);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+203, 178);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+205, 180);
  
  fill(0);
  stroke(0);
  strokeWeight(3);
  point(635, 184);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(628, 189);
  
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(615, 189);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(610, 186);
  
   
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(623, 190);
  
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(633, 187);
  
 
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+206, 183);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+209, 185);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+212, 188);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+214, 187);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+217, 190);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+220, 190);
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+225, 190);
  
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+230, 188);
  
  
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+234, 186);
  
    
   fill(0);
  stroke(0);
  strokeWeight(3);
  point(400+237, 182);
  
  
  
  //coordenadas:
 fill(255);
  textSize(30);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
  
}
