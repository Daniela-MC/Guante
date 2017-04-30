import processing.serial.*;

PImage image_2017_04_29;

int X, Y, z=800, c=600, cl;
float pmouseX, pmouseY;
color pincel = 0;
PFont font1; // VARIABLE TIPO DE LETRA
float ang = 0.0;
boolean button = false; 
float a = 0; 
float b = 0; 
float angle = 0; 

Serial port;

int accX, accY, accZ;
float gX, gY, gZ;
float pitch, roll;

void setup()
{
  size(800,600,P3D);
  background(255,255,255);
  frameRate(15);
  port = new Serial(this, Serial.list()[0], 9600);
  port.clear();
  
  port.bufferUntil('\n');
  
}
 

void draw()
{
 diseno();
 figuras2d();
//figuras3d();
}

void diseno()
{
  // SE CREAN LOS CUADROS DE LOS COLORES
  font1 = loadFont("CopperplateGothic-Light-48.vlw");
  textFont(font1, 10);
  stroke(255);
  fill(0);
  textSize(32);
  text("TO DRAW",350,30);
  image_2017_04_29 = loadImage("image_2017_04_29.jpg");
  image(image_2017_04_29,530,50);
  //fill(0);
  //stroke(0);
  //rect(1,30,797,90);
  /*fill(0,255,0);  // VERDE
  rect(50,70,25,25);
  fill(255,0,0);  // ROJO
  rect(80,70,25,25);
  fill(255,255,0);  // AMARILLO
  rect(110,70,25,25);
  fill(0,0,255); // AZUL
  rect(140,70,25,25);
  fill(255,0,255);  // FUCCIA
  rect(170,70,25,25);
  fill(0,0,0);  // NEGRO
  rect(200,70,25,25);
  fill(0,255,255);   // AGUAMARINA
  rect(230,70,25,25);  
  fill(142,68,173);   // MORADO
  rect(260,70,25,25);
  fill(241,148,138);  // ROSADO
  rect(290,70,25,25);
  fill(112,123,124);  // GRIS*/
  //rect(10,10,25,25);
  fill(255);
  stroke(0);
  rect(32,80,25,25); // PARA DIBUJAR UN CUADRADO
  fill(255);
  stroke(0);
  ellipse(85,92,30,30); // PARA DIBUJAR UN CIRCULO
  fill(255);
  stroke(0);
  triangle(110, 105, 140,70, 170, 105); // PARA DIBUJAR UN TRIANGULO
  stroke(0);
  fill(0);
  textSize(26);
  text("2D",60,70);
  stroke(0);
  fill(0);
  textSize(26);
  text("3D",250,70);
  fill(255);
  stroke(0);
  ellipse(250,90,10,10);
  fill(255);
  stroke(0);
  ellipse(280,90,10,10);
  fill(255);
  
}
  void borrador()
// CON EL CLIC DERECHO DEL MOUSE SE BORRA LA PANTALLA
{
  fill(255);
  stroke(255);
  rect(1,1,z,c);
}

void mouseDragged(){
  
  if(mouseButton==LEFT){
    stroke(pincel);
    line(pmouseX, pmouseY, mouseX, mouseY);
    pmouseX=mouseX;
    pmouseY=mouseY;
  }else if(mouseButton == RIGHT){
    borrador();
  }
}
  
           
void mousePressed()
{
  println("mouseX: "+mouseX +" mouseY: "+mouseY);
  
  if(mouseButton==LEFT){
   
    if(mouseX<=737 && mouseX>=775 && mouseY>=46 && mouseY<=64)
    {
      pincel = color(0,166,057); // VERDE
    }
    else 
    {  
      pmouseX=mouseX;
      pmouseY=mouseY;
    } 
  
 

  if(mouseButton==LEFT){
    
    if(mouseX>=552 && mouseX<=574 && mouseY>=119 && mouseY<=122)
    {
        pincel= color(255,0,0);  // ROJO
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=608 && mouseX<=626 && mouseY>=85 && mouseY<=90)
    {
        pincel= color(255,255,0);  // AMARILLO
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=667 && mouseX<=696 && mouseY>=97 && mouseY<=105)
    {
        pincel= color(0,0,255);  // AZUL
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=579 && mouseX<=596 && mouseY>=90 && mouseY<=99)
    {
        pincel= color(243,165,005);  //NARANJA
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=573 && mouseX<=589 && mouseY>=165 && mouseY<=184)
    {
        pincel= color(0,0,0); // NEGRO
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
    if(mouseButton==LEFT){
    
    if(mouseX>=661 && mouseX<=682 && mouseY>=140 && mouseY<=151)
    {
        pincel= color(198,166,100);  // CAFE
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
 if(mouseButton==LEFT){
    
    if(mouseX>=685 && mouseX<=713 && mouseY>=117 && mouseY<=129)
    {
        pincel= color(142,68,173);  // MORADO
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
 if(mouseButton==LEFT){
    
    if(mouseX>=548 && mouseX<=576 && mouseY>=142 && mouseY<=155)
    {
        pincel= color(255,192,235); // ROSADO
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=606 && mouseX<=632 && mouseY>=180 && mouseY<=190)
    {
        pincel= color(112,123,124); // GRIS
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
}
}

}

void figuras2d()
{
  if(mouseButton==LEFT){
    
    if(mouseX>=432 && mouseX<=454 && mouseY>=72 && mouseY<=93)
    {
        rect(400,400,accX,accY);
        
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=472 && mouseX<=505 && mouseY>=66 && mouseY<=90)
    {
        ellipse(350,300,accX,accY);
        
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=512 && mouseX<=566 && mouseY>=67 && mouseY<=92)
    {
        triangle(300,400,390,200,500,400);
        
    }
}
}

/*void figuras3d()
{
      
    //CUBO 
    if(mouseX>=663 && mouseX<=677 && mouseY>=73 && mouseY<=86)
    {       
         /*fill(255);
         stroke(255);
         rect(1,125,797,470);
       background(255);
       diseno();
       translate(width/2, height/2);

       rotateX(pitch);
       rotateY(roll);
       stroke(0);
       fill(255);
       box(100, 100, 100);
       
    }
    
    if(mouseX>=692 && mouseX<=707 && mouseY>=74 && mouseY<=83)
    {    
         translate(width/2, height/2);
         rotateX(pitch);
         rotateY(roll);
         ellipse(0, 0, 300, 300);
      
    }
    
  /*  // LINEAS DE COLORES
     if (mousePressed && (mouseButton == LEFT)){
   translate(mouseX, mouseY);
   rotate(radians(angle));
   stroke(random(100,200), random(50,255), random(25,75));
    line(a, b, -60, 10); 
    line(a, -b, 60, -10); 
    a += 0.2;
    b += 0.2; 
    angle += 5; 
    
  } else if (mousePressed && (mouseButton == RIGHT)) {
    background(0);
  }else {
    rect(0,0,10,10);
 
  }
}*/

void serialEvent(Serial p)
{
  String inString = p.readString().trim();
  String[] list = split(inString, ':');
  accX = int(list[0]) - 512;
  accY = int(list[1]) - 512;
  accZ = int(list[2]) - 512;
  
  gX = accX*(3/512.0);
  gY = accY*(3/512.0);
  gZ = accZ*(3/512.0);
  
  roll  = (atan2(-gY, gZ)*180.0)/PI;
  pitch = (atan2(gX, sqrt(gY*gY + gZ*gZ))*180.0)/PI; 
  
  /*println(roll);
  print(accX); print('\t');
  print(accY); print('\t');
  println(accZ);*/ 
}