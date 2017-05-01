import processing.serial.*;

float pmouseX,pmouseY,X,Y;
PImage image_2017_04_29;
Serial port;
color pincel=0;
int accX, accY, accZ, color1,c;
float gX, gY, gZ, roll, pitch;

void setup()
{
 size(800,600,P3D);
 background(255);
 frameRate(15);
 port = new Serial(this,Serial.list()[0], 9600);
 port.clear();
 
 port.bufferUntil('\n');
}

void draw()
{
  diseno();
  figuras2d();
  figuras3d();
  colores();
}

void diseno()
{
  stroke(255);
  fill(0);
  textSize(32);
  text("TO DRAW", 320,30);
  image_2017_04_29 = loadImage("image_2017_04_29.jpg");
  image(image_2017_04_29,530,50);
  fill(255);
  stroke(0);
  rect(40,80,25,25);  // DIBUJA UN CUADRADO
  fill(255);
  stroke(0);
  ellipse(95,95,30,30);  // DIBUJA UN CIRCULO 
  fill(255);
  stroke(0);
  triangle(120,110,150,80,180,110);  // DIBUJA UN TRIANGULO
  fill(0);
  textSize(26);
  text("2D",80,70);
  fill(255);
  stroke(0);
  ellipse(300,95,15,15);
  fill(255);
  stroke(0);
  ellipse(350,95,15,15);
  fill(0);
  textSize(26);
  text("3D",310,70);
}

void borrador()
{
 fill(255);
 stroke(255);
 rect(1,1,800,600);
}

void mouseDragged()
{
 if(mouseButton==LEFT)
 {
   stroke(pincel); 
   line(accX,accY,mouseX,mouseY);
   pmouseX=mouseX;
   pmouseY=mouseY;
 }
 else if(mouseButton==RIGHT)
 {
   borrador();
 }
}



void serialEvent(Serial p)
{
 String inString = p.readString().trim();
 String[] list = split(inString, ':');
 accX = int(list[0]) - 512;
 accY = int(list[1]) - 512;
 accZ = int(list[2]) - 512;
 color1 = int(list[3]);
 
 gX = accX*(3/512.0);
 gY = accY*(3/512.0);
 gZ = accZ*(3/512.0);
 
 roll = (atan2(-gY, gZ)*180.0)/PI;
 pitch = (atan2(gX, sqrt(gY*gY + gZ*gZ))*180.0)/PI;
 
 
  print(accX); print('\t');
  print(accY); print('\t');
  print(accZ); print('\t');
  println(color1);
 
}

void figuras2d()
{
  if(mouseButton==LEFT)
  {
    if(mouseX>=42 && mouseX<=63 && mouseY>=80 && mouseY<=102)
    {
      fill(255);
      stroke(0);
      rect(300,300,accX,accY);
    }
  }
  
  if(mouseButton==LEFT)
  {
    if(mouseX>=82 && mouseX<=108 && mouseY>=83 && mouseY<=104)
    {
      fill(255);
      stroke(0);
      ellipse(300,300,accX,accY);
    }
  }
  
  if(mouseButton==LEFT)
  {
    if(mouseX>=122 && mouseX<=178 && mouseY>=79 && mouseY<=107)
    {
      fill(255);
      stroke(0);
      triangle(300,400,390,200,500,400);
    }
  }
  
}

void figuras3d()
{
 if(mouseButton==LEFT)
 {
   if(mouseX>=294 && mouseX<=306 && mouseY>=88 && mouseY<=100)
   {
     translate(width/2, height/2);
     rotateX(pitch);
     rotateY(roll);
     stroke(0);
     fill(255);
     box(100, 100, 100);
   }
 }
 
 if(mouseButton==LEFT)
 {
   if(mouseX>=341 && mouseX<=357 && mouseY>=87 && mouseY<=102)
   {
     translate(width/2, height/2);
     rotateX(pitch);
     rotateY(roll);
     fill(255);
     stroke(0);
     ellipse(0, 0, 300, 300);
   }
 }
}
void colores()
{
  pmouseX=mouseX;
  pmouseY=mouseY;
 
  if(color1==0)
  {
    pincel = color(0); //NEGRO
  }
  
  if(color1==1 )
  {
    pincel = color(112,123,124);  //GRIS
  }
  
  if(color1==2)
  {
    pincel = color(255,192,235);  //ROSADO
  }
 
  if(color1==3)
   {
      pincel = color(255,0,0); //ROJO
   }
   
  if(color1==4)
    {
      pincel = color(243,165,005);  //NARANJA
    }
    
  if(color1==5)
    {
      pincel = color(255,255,0); //AMARILLO
    }
  
  if(color1==6)
    {
      pincel = color(0,166,057); //VERDE
    }
  
  if(color1==7)
    {
      pincel = color(0,0,255); //AZUL
    }

  if(color1==8)
    {
      pincel = color(142,68,173);  //MORADO
    }
  
  if(color1==9)
    {
      pincel = color(198,166,100); //CAFE
    }
    
  if(color1>9)
  {
    color1=0;
  }
}