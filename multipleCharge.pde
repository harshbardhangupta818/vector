PVector E_d,E;
int n=1;

PVector[] centre= new PVector[10];
PVector[] location= new PVector[10];
PVector[] displac= new PVector[10];
PVector[] Ed= new PVector[10];
float px=-300/n,py=-300/n,x,y;

float[] r= new float[10];
float[] Q= new float[10];


void setup()
{ 
  size(700,700);
  background(0);
  frameRate(300);

  
  textSize(30);
  fill(210);

  
}

     
void draw()
{   noStroke();
  translate(350,350);
    x = px;
    y = -py;
      E = new PVector(0,0);
     Q[0]=5;
      centre[0] = new PVector(-200/n,0);
     fill(200,0,0);
     ellipse(-200,0,10,10); 
 
        strokeWeight(2);
        stroke(200,200,250);
        
  for(int i=0;i<n;i++){
  location[i] = new  PVector(x,y);
  Ed[i]=new PVector(0,0);

  translate(x, y);

  displac[i]=location[i].sub(centre[i]);
  r[i]=displac[i].mag();
  Ed[i]=displac[i].mult(9*pow(10,9)*Q[i]/(pow(r[i],3)));
  }
  
  for(int i=0;i<n;i++){
  E=E.add(Ed[i]);
  //E=E.add(Ed[i+3]);
  
}
  E_d=E.normalize();
  E_d=E.mult(12);
  
  line(0,0,E_d.x,E_d.y);
  stroke(0,25,0);
  fill(0,225,0);
  ellipse(E_d.x,E_d.y,5,5);
  
  if(py<300/n)
  {
    if(px < 300/n){
    px += 20/n;
    }
    else{
      py=py+20/n;
      px=-300/n;
    }
  }


 // translate(-300,300);
  translate(-x,-y);}
void mousePressed(){
  if(mouseButton==LEFT){
      background(0);
    n++;
    px=-300/n;
    py=-300/n;
    Q[n-1]=5;
    centre[n-1] = new PVector((mouseX-350)/n,(mouseY-350)/n);
     fill(0,0,200);}
     
       if(mouseButton==RIGHT){
      background(0);
    n++;
    px=-300/n;
    py=-300/n;
    Q[n-1]=-5;
    centre[n-1] = new PVector((mouseX-350)/n,(mouseY-350)/n);
     fill(0,0,200);}}

     
