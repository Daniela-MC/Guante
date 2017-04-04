float x, y;
float incx, incy;
float inc=1;
int X, Y, z=50, c=50;



void setup()
{
  size(800,600);
  background(255,255,255);
  x=y=0;
  incx=incy=inc;
}
 

void draw()
{
  // SE CREAN LOS CUADROS DE LOS COLORES
  fill(0);
  textSize(26);
  text("¡TO DRAW!",350,40);
  fill(0,255,0);
  rect(50,70,25,25);
  fill(255,0,0);
  rect(80,70,25,25);
  fill(255,255,0);
  rect(110,70,25,25);
  fill(0,0,255);
  rect(140,70,25,25);
  fill(255,0,255);
  rect(170,70,25,25);
  fill(0,0,0);
  rect(200,70,25,25);
  fill(0,255,255);
  rect(230,70,25,25);
  fill(255,255,255);
  rect(260,70,25,25);
  fill(255,255,255);
  fill(0);
  textSize(26);
  text("DELETE",600,80);
  fill(255,100,100);
  ellipse(650,100,25,25); 
  if(mousePressed)
  {
    if(mouseButton==LEFT)
    {
       stroke(0,0,0);
       line(pmouseX, pmouseY,mouseX,mouseY);
    }
  }
  borrar();
}

void borrar()
// CON EL CLIC DERECHO DEL MOUSE SE BORRA LA PANTALLA
{
  if (mousePressed)
  {
    if(mouseButton==RIGHT)
    {
      fill(255);
      stroke(255);
      ellipse(mouseX,mouseY,z,c);
    }
  }
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