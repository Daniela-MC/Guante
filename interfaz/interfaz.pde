import processing.serial.*;

int accX_ant, accY_ant, X, Y, accZ_ant;
PImage image_2017_04_29;
Serial port;
color pincel=0;
int accX, accY, accZ, color1, c, modo, accion;
float ejeX, ejeY, ejeZ, roll, pitch, vref=3.0, sens=0.3, ceroG=1.5;     

void setup()
{
  size(800, 600, P3D);
  background(255);
  frameRate(15);
  port = new Serial(this, Serial.list()[0], 9600);
  port.clear();

  port.bufferUntil('\n');
}

void draw()
{
  diseno();
  modo_operacion();
}
void diseno()
{
  stroke(255);
  fill(0);
  textSize(32);
  text("TO DRAW", 320, 30);
  image_2017_04_29 = loadImage("image_2017_04_29.jpg");
  image(image_2017_04_29, 530, 50);
}
void borrador()
{
  fill(255);
  stroke(255);
  rect(1, 1, 800, 600);
}

void linea()
{
  if (accion==1 && accX<90)
  {
    stroke(pincel);
    translate(width/2, height/2);
    line(accX, accY, accX_ant, accY_ant);
    accX_ant=accX;
    accY_ant=accY;
  }
}

void serialEvent(Serial p)
{
  String inString = p.readString().trim();
  String[] list = split(inString, ':');
  accX = int(list[0]);
  accY = int(list[1]);
  accZ = int(list[2]);
  modo = int(list[3]);
  accion = int(list[4]);

  ejeX = (accX/1024.0*vref-ceroG)/sens;
  ejeY = (accY/1024.0*vref-ceroG)/sens;
  ejeZ = (accZ/1024.0*vref-ceroG)/sens;

  roll = (atan2(-ejeY, ejeZ)*180.0)/PI;
  pitch = (atan2(ejeX, sqrt(ejeY*ejeY + ejeZ*ejeZ))*180.0)/PI;


  print(accX); print('\t');
  print(accY); print('\t');
  print(accZ); print('\t');
  print(modo); 
  print('\t');
  println(accion);
}           

void cuadrado()
{
  if (accion==2)
  {
    fill(255);
    stroke(pincel);
    rect(400, 400, accX, accY);
  }
}

void circulo()
{
  if (accion==3)
  {
    fill(255);
    stroke(pincel);
    ellipse(300, 300, accX, accY);
  }
}

void triangulo()
{
  if (accion==4)
  {
    translate(width/2, height/2);
    fill(255);
    stroke(pincel);
    triangle(0, accX, 200, 200, accY, accX);

  }
}

void cubo()
{

  if (accion==5)
  {
    translate(width/2, height/2);
    rotateX(roll);
    rotateY(pitch);
    stroke(pincel);
    fill(255);
    box(accX, accY, accZ);
  }
}

void esfera()
{
  if (accion==6)
  {
    translate(width/2, height/2);
    rotateX(pitch);
    rotateY(roll);
    fill(255);
    stroke(pincel);
   lights();
   sphere(100);
  }
}

void colores()
{ 
  if (accion==0 || accion==1 || accion==2 || accion==3 || accion==4 || accion==5 || accion==6 || accion==7 || accion==8 || accion==9)
  {
    fill(255);
    stroke(255);
    rect(330, 70, 200, 20);
  }

  if (accion==0)
  {
    fill(0);
    textSize(18);
    text("Negro", 350, 85);
    pincel = color(0); //NEGRO
  }

  if (accion==1 )
  {
    fill(0);
    textSize(18);
    text("Gris", 350, 85);
    pincel = color(112, 123, 124);  //GRIS
  }

  if (accion==2)
  {
    fill(0);
    textSize(18);
    text("Rosado", 350, 85);
    pincel = color(255, 192, 235);  //ROSADO
  }

  if (accion==3)
  {
    fill(0);
    textSize(18);
    text("Rojo", 350, 85);
    pincel = color(255, 0, 0); //ROJO
  }

  if (accion==4)
  {
    fill(0);
    textSize(18);
    text("Naranja", 350, 85);
    pincel = color(243, 165, 005);  //NARANJA
  }

  if (accion==5)
  {
    fill(0);
    textSize(18);
    text("Amarillo", 350, 85);
    pincel = color(255, 255, 0); //AMARILLO
  }

  if (accion==6)
  {
    fill(0);
    textSize(18);
    text("Verde", 350, 85);
    pincel = color(0, 166, 057); //VERDE
  }

  if (accion==7)
  {
    fill(0);
    textSize(18);
    text("Azul", 350, 85);
    pincel = color(0, 0, 255); //AZUL
  }

  if (accion==8)
  {
    fill(0);
    textSize(18);
    text("Morado", 350, 85);
    pincel = color(142, 68, 173);  //MORADO
  }

  if (accion==9)
  {
    fill(0);
    textSize(18);
    text("Cafe", 350, 85);
    pincel = color(198, 166, 100); //CAFE
  }

  if (accion>9)
  {
    accion=0;
  }
}


void modo_operacion()
{
  if (modo==2 || modo==3 || modo==4 || modo==5 || modo==8 || modo==9)
  {
    fill(255);
    stroke(255);
    rect(330, 70, 200, 20);
  }

  if (modo==2)
  {
    fill(0);
    textSize(18);
    text("Linea", 350, 85);
    linea();
  }

  if (modo==3)
  {
    fill(0);
    textSize(18);
    text("Cuadrado", 350, 85);
    cuadrado();
  }

  if (modo==4)
  {
    fill(0);
    textSize(18);
    text("Circulo", 350, 85);
    circulo();
  }

  if (modo==5)
  {
    fill(0);
    textSize(18);
    text("Triangulo", 350, 85);
    triangulo();
  }

  if (modo==1 || modo==6 || modo==7 || modo==10)
  {
    fill(255);
    stroke(255);
    rect(200, 70, 250, 20);
  }

  if (modo==1)
  {
    fill(0);
    textSize(18);
    text("Dibujar", 250, 85);
  }

  if (modo==6)
  {
    fill(0);
    textSize(18);
    text("Color", 250, 85);
    colores();
  }

  if (modo==7)
  {
    fill(0);
    textSize(18);
    text("3D", 250, 85);
  }

  if (modo==8)
  {
    fill(0);
    textSize(18);
    text("Cubo", 350, 85);
    cubo();
  }

  if (modo==9)
  {
    fill(0);
    textSize(18);
    text("Esfera", 350, 85);
    esfera();
  }

  if (modo==10) 
  {
    fill(0);
    textSize(18);
    text("Borrador", 250, 85);
    borrador();
  }
}