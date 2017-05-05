#include "interrupciones.h"
int color = 0, modo=0,accion=0;
const int xPin = A4;
const int yPin = A3;
const int zPin = A2;
int valx, valy, valz;
unsigned long tiempo=0, tiempo_actual=0, tiempo_retardo=1000; // variables para que el conteo de los pulsadores sea mas lento
unsigned long tiempo1=0, tiempo_actual1=0, tiempo_retardo1=1000;


void modo_interrupcion()
{
  tiempo=millis();
  if(tiempo>tiempo_actual+tiempo_retardo)  // para que la lectura de los pulsadores ocurra de manera mas lenta se suma un segundo al tiempo de ejecucion que lleva el programa 
  {
    tiempo_actual=tiempo;

     modo = modo+1;  // la interrupcion funciona como un contador y de acuerdo al valor que tome se realizan las acciones en processing
     if (modo >10)
     {
       modo = 0;
     }
  }
}

void acciones()
{
   tiempo1=millis();
  if(tiempo1>tiempo_actual1+tiempo_retardo1)
  {
    tiempo_actual1=tiempo1;
   
    accion = accion+1;
 
    if(accion >9)
    {
      accion = 0;
    }
  } 
}

void iniciar_guante()
{
   Serial.begin(9600);
  pinMode(xPin, INPUT);  // se declaran los pines analogicos como salidas
  pinMode(yPin, INPUT);
  pinMode(zPin, INPUT);
  pinMode(2, INPUT_PULLUP);  // interrupcion 0
  pinMode(3, INPUT_PULLUP);  // interrupcion 1
  attachInterrupt(digitalPinToInterrupt(2),modo_interrupcion,RISING);  // funcion para la interrupcion 0
  attachInterrupt(digitalPinToInterrupt(3),acciones,RISING);  // funcion para la interrupcion 1
  Timer2int();
}


void enviar_valores()
{
  Serial.print(valx);   // imprime los valores leidos por el acelerometro y se envian por el serial 
  Serial.print(":");

  Serial.print(valy);
  Serial.print(":");

  Serial.print(valz);
  Serial.print(":");
  
  Serial.print(modo);   // imprime los valores de la primera interrupcion y los envia por el serial 
  Serial.print(":");
  
  Serial.println(accion);  // imprime los valores de la segunda interrupcion y los envia por el serial 
}

void Timer2int()
{
  TCNT2=98;  // reinicia el contador
  TIMSK2=1;  // interrupciones habilitadas
  TCCR2A=0;  // modo normal 
  TCCR2B=7;  // preescalado
}

 ISR(TIMER2_OVF_vect)
 {
   TCNT2=98;
    
  valx=analogRead(xPin); // lee los valores del acelerometro
  valy=analogRead(yPin);
  valz=analogRead(zPin);

  valx = map(valx, 266, 400, 0, 180);  // se hace la caracterizacion del acelerometro y segun las lecturas se asigna un valor acorde con las coordenadas que se estan trabajando en processing
  valy = map(valy, 275, 400, 0, 90);
  valz = map(valz, 275, 400, 0, 180 );
 }


