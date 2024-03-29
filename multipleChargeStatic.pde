PVector E_d,E;
float n=4;

PVector[] centre= new PVector[5];
PVector[] location= new PVector[5];
PVector[] displac= new PVector[5];
PVector[] Ed= new PVector[5];
float px=-350/n,py=-350/n,x,y;

float[] r= new float[5];
float Q[]={5,-20,5,-10};


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
      centre[0] = new PVector(-240/n,0);
      centre[1] = new PVector(240/n,0);
      centre[2] = new PVector(0,240/n);
      centre[3]= new PVector(0,-240/n);
        fill(200,0,0);
        ellipse(-240,0,10,10);
        fill(0,0,200);
        ellipse(240,0,30,30);
        fill(200,0,0);
        ellipse(0,240,10,10);
        fill(0,0,200);
        ellipse(0,-240,20,20);
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
  ellipse(E_d.x,E_d.y,2,2);
  
  if(py<350/n)
  {
    if(px < 350/n){
    px += 2;
    }
    else{
      py=py+2;
      px=-350/n;
    }
  }
  translate(-x,-y);
  
  
}
