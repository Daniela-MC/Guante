float x, y;
int X, Y, z=800, c=600, cl,count=0;
float pmouseX, pmouseY;
color pincel = 0;

void setup()
{
  size(800,600,P3D);
  background(255,255,255);
}
 

void draw()
{
 diseno();
}

void diseno()
{
   // SE CREAN LOS CUADROS DE LOS COLORES
  stroke(0);
  fill(0);
  textSize(26);
  text("¡TO DRAW!",350,25);
  fill(255);
  stroke(255);
  rect(1,30,797,125);
  fill(0,255,0);  //verde
  rect(50,70,25,25);
  fill(255,0,0);  //rojo
  rect(80,70,25,25);
  fill(255,255,0);  //amarillo
  rect(110,70,25,25);
  fill(0,0,255); //azul
  rect(140,70,25,25);
  fill(255,0,255);  //fuccia
  rect(170,70,25,25);
  fill(0,0,0);  //negro
  rect(200,70,25,25);
  fill(0,255,255);   //aguamarina
  rect(230,70,25,25);  
  fill(142,68,173);   //morado
  rect(260,70,25,25);
  fill(241,148,138);  //rosado
  rect(290,70,25,25);
  fill(255,255,255);
  fill(0);
 
}

void borrador()
// CON EL CLIC DERECHO DEL MOUSE SE BORRA LA PANTALLA
{
  fill(255);
  stroke(255);
  rect(1,1,z,c);
}

 public void keyPressed()
{
  // EL TAMAÑO DEL BORADOR SE PUEDE CAMBIAR SI SE PRESIONAN LAS TECLAS '+' Y '-'
 if(key=='+')
 {
   c++;
   z++;
 }
 if(key=='-')
 {
   c--;
   z--;
 }
}

void mouseDragged(){
  
 /* if(mouseX<=797 && mouseX>=0 && mouseY>=0 && mouseY<=153)
  {
    if(mouseX<=73 && mouseX>=51 && mouseY>=70 && mouseY<=94){
    
    if(mouseX<=82 && mouseX>=102 && mouseY>=72 && mouseY<=92){
    return;}}}*/
  
  
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
   
    if(mouseX<=73 && mouseX>=51 && mouseY>=70 && mouseY<=94)
    {
      pincel = color(0,255,0);
    }
    else 
    {  
      pmouseX=mouseX;
      pmouseY=mouseY;
    } 
  
 

  if(mouseButton==LEFT){
    
    if(mouseX>=82 && mouseX<=102 && mouseY>=72 && mouseY<=92)
    {
        pincel= color(255,0,0);
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=112 && mouseX<=133 && mouseY>=70 && mouseY<=92)
    {
        pincel= color(255,255,0);
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=142 && mouseX<=164 && mouseY>=70 && mouseY<=90)
    {
        pincel= color(0,0,255);
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=172 && mouseX<=191 && mouseY>=73 && mouseY<=92)
    {
        pincel= color(255,0,255);
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=202 && mouseX<=222 && mouseY>=71 && mouseY<=90)
    {
        pincel= color(0,0,0);
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
    if(mouseButton==LEFT){
    
    if(mouseX>=232 && mouseX<=252 && mouseY>=71 && mouseY<=90)
    {
        pincel= color(0,255,255);
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
 if(mouseButton==LEFT){
    
    if(mouseX>=264 && mouseX<=280 && mouseY>=73 && mouseY<=91)
    {
        pincel= color(142,68,173);
      
    }
    else
    {
      pmouseX=mouseX;
      pmouseY=mouseY;
    }
}
 if(mouseButton==LEFT){
    
    if(mouseX>=293 && mouseX<=311 && mouseY>=71 && mouseY<=90)
    {
        pincel= color(241,148,138);
      
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