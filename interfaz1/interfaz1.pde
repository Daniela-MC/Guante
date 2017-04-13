int X, Y, z=800, c=600, cl,count=0;
float pmouseX, pmouseY;
color pincel = 0;
PFont font1; // VARIABLE TIPO DE LETRA
float ang = 0.0;
boolean button = false; 
float a = 0; 
float b = 0; 
float angle = 0; 

void setup()
{
  size(800,600,P3D);
  background(255,255,255);
  frameRate(15);
  
}
 

void draw()
{
 diseno();
 figuras2d();
 figuras3d();
}

void diseno()
{
   // SE CREAN LOS CUADROS DE LOS COLORES
  font1 = loadFont("Harrington-48.vlw");
  textFont(font1, 48);
  stroke(0);
  fill(0,0,0);
  textSize(32);
  text("¡TO DRAW!",350,25);
  fill(255);
  stroke(255);
  rect(1,30,797,125);
  fill(0,255,0);  // VERDE
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
  fill(112,123,124);  // GRIS
  rect(320,70,25,25);
  fill(255);
  stroke(0);
  rect(430,70,25,25); // PARA DIBUJAR UN CUADRADO
  fill(255);
  stroke(0);
  ellipse(490,80,30,30); // PARA DIBUJAR UN CIRCULO
  fill(255);
  stroke(0);
  triangle(510, 95, 540,70, 570, 95); // PARA DIBUJAR UN TRIANGULO
  stroke(0);
  fill(0);
  textSize(26);
  text("2D",470,60);
  stroke(0);
  fill(0);
  textSize(26);
  text("3D",670,60);
  fill(255);
  stroke(0);
  ellipse(670,80,10,10);
  fill(255);
  stroke(0);
  ellipse(700,80,10,10);
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
if(mouseButton==LEFT){
    
    if(mouseX>=324 && mouseX<=342 && mouseY>=71 && mouseY<=90)
    {
        pincel= color(112,123,124);
      
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
        rect(300,200,200,200);
        
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=472 && mouseX<=505 && mouseY>=66 && mouseY<=90)
    {
        ellipse(350,300,200,200);
        
    }
}
if(mouseButton==LEFT){
    
    if(mouseX>=512 && mouseX<=566 && mouseY>=67 && mouseY<=92)
    {
        triangle(300,400,390,200,500,400);
        
    }
}
}

void figuras3d()
{
    if(mouseX>=663 && mouseX<=677 && mouseY>=73 && mouseY<=86)
    { 
      if (mousePressed && mouseButton==LEFT)
      {
        translate(width/2, height/2);
        rotateX(frameCount*PI/60.0);
        rotateY(frameCount*PI/120.0);
        rotateZ(frameCount*PI/180.0);
        box(100, 100, 100);
      } 
    }
    
    if(mouseX>=692 && mouseX<=707 && mouseY>=74 && mouseY<=83)
    { 
      if (mousePressed && mouseButton==LEFT)
      {   
        translate(width/2, height/2);
        rotateX(ang += 0.1);
        rotateY(ang += 0.1);
        rotateZ(ang += 0.1);
        ellipse(0, 0, 300, 300);
      }
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
    }*/
}