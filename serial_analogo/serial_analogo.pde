import processing.serial.*;

Serial port;

int accX, accY, accZ;
float gX, gY, gZ;
float pitch, roll;

void setup()
{
  size(400, 400, P3D);
  stroke(255, 0, 0);
  noFill();
  port = new Serial(this, Serial.list()[0], 9600);
  port.clear();
  
  port.bufferUntil('\n');
}

void draw()
{
 {
 background(0);

 // Dibujaremos centrado
 // en el (0,0,0)
 translate(width/2, height/2);

 rotateX(pitch);
 rotateY(roll);
 /*rotateX(accX*PI/60.0);
 rotateY(accY*PI/120.0);
 rotateZ(accZ*PI/180.0);*/
 //if (mousePressed && mouseButton==LEFT)
 
   box(100, 100, 100);
 
}
}


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
  
  println(roll);
  /*print(accX); print('\t');
  print(accY); print('\t');
  println(accZ);*/ 
}