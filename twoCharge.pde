PVector displac1,displac2,location1,location2,centre1,centre2,E1,E2 ,E,E_d;
float px=-300,py=-300,x,y;
float Q1=5,Q2=-5,r1,r2;
float cx=175,cy=0,cx1=-175,cy1=0;
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

  location1 = new  PVector(x,y);
  location2 = new PVector(x,y);
  centre1 = new PVector(cx,cy);
  centre2 = new PVector(cx1,cy1);
  E1=new PVector(0,0);
  noStroke();
  strokeWeight(2);
  fill(200,0,0);
  ellipse(cx,cy,10,10);
  fill(0,0,200);
  ellipse(cx1,cy1,10,10);
  
  stroke(200,200,240);
  translate(x, y);

  displac1=location1.sub(centre1);
  displac2=location2.sub(centre2);
  r1=displac1.mag();
  r2=displac2.mag();
  E1=displac1.mult(9*pow(10,9)*Q1/(pow(r1,3)));
  E2=displac2.mult(9*pow(10,9)*Q2/(pow(r2,3)));
  E=E1.add(E2);
  E_d=E.normalize();
  E_d=E.mult(12);
  
  line(0,0,E_d.x,E_d.y);
  stroke(0,25,0);
  fill(0,225,0);
  ellipse(E_d.x,E_d.y,5,5);
  if(py<300)
  {
    if(px < 300){
    px += 30;
   }
    else{
      py=py+30;
      px=-300;

    }
  }
  translate(-x,-y);
 if (mousePressed && (mouseButton == LEFT)) {
    background(0);
    px=-300; py=-300;
    cx=mouseX-350;
    cy=mouseY-350;
  } else if (mousePressed && (mouseButton == RIGHT)) {
    background(0);
    px=-300;py=-300;
    cx1=mouseX-350;
    cy1=mouseY-350;}}
