PVector displac,location,centre ;
float px=-300,py=-300,x,y;


void setup()
{ 
  size(700,700);
  background(0);
  frameRate(300);

  
  textSize(30);
  fill(210);

  
}
void draw()
{
  translate(350,350);
    x = px;
    y = -py;
     
  //Enter the vector field as the argument of PVector constructor
  location = new  PVector(-y,x);
  centre = new PVector(0,0);
  stroke(255);
  strokeWeight(3);
  translate(x, y);

  displac=location.sub(centre);
  displac.normalize();
  displac=displac.mult(10);
  
  line(0,0,displac.x,displac.y);
  if(py<600)
  {
    if(px < 600)
    px += 30;
    else
    {
      py=py+30;
      px=-300;
    }
  }
  translate(-x,-y);
  
  
}
