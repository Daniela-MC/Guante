volatile int color=0;
const int xPin=A4;
const int yPin=A3;
const int zPin=A2;
const int maximo=9;
const int aumenta=1;
int i;


void setup()
{
 Serial.begin(9600);
 pinMode(xPin,INPUT);
 pinMode(yPin,INPUT);
 pinMode(zPin,INPUT);
 pinMode(2,INPUT_PULLUP);
 attachInterrupt(digitalPinToInterrupt(2),interrupcion_color,FALLING);
}

void loop() 
{ 
   Serial.print(analogRead(xPin));
   Serial.print(":");
   
   Serial.print(analogRead(yPin));
   Serial.print(":");
   
   Serial.print(analogRead(zPin));
   Serial.print(":");
   
   Serial.println(color);
}

void interrupcion_color()
{
  color = color+aumenta;
  if(color>maximo)
  {
    color=maximo;
  }
}



