const int xPin=A4;
const int yPin=A3;
const int zPin=A2;

void setup()
{
 Serial.begin(9600);

 pinMode(xPin,INPUT);
 pinMode(yPin,INPUT);
 pinMode(zPin,INPUT);
}

void loop() 
{
   Serial.print(analogRead(xPin));
   Serial.print(":");
   

   
   Serial.print(analogRead(yPin));
   Serial.print(":");
   
   
  
   Serial.println(analogRead(zPin));
   
}

