float [] x,y,v,x2,y2,x3,y3,x4,y4;
void setup(){
  size(800,600);
  x = new float[11];
  y = new float[11];
  v = new float[10];
  x2 = new float[10];
  y2 = new float[10];
  x3 = new float[10];
  y3 = new float[10];
  x4 = new float[10];
  y4 = new float[10];
  for(int i=0;i<9; i++){
    x[i] = random(50,750);
    y[i] = 0;
    v[i] = random(2,7);
    x2[i] =random(50,750);
    y2[i] = 700;
    x3[i] = -50;
    y3[i] = random(50,550);
        x4[i] = 850;
    y4[i] = random(50,550);
  }
}
void snow(float x, float y){
 circle(x,y,50);
}
int count=0;
void draw(){
  background(255,255,0);
  for(int i=0;i<9; i++){
    y[i] +=v[i];
    snow(x[i],y[i]);
    if(y[i]>height)
    y[i] = 0;
  x[10]=mouseX;
  y[10]=mouseY;
     fill(0);
  snow(x[10],y[10]);
     fill(255);
             snow(x2[i],y2[i]);
     if (count>150) {y2[i] -=v[i];}
    if(y2[i]<0) {y2[i] = 600;}
         snow(x3[i],y3[i]);
     if (count>300) {x3[i] +=v[i];}
    if(x3[i]>800) {x3[i] = 0;}
         snow(x4[i],y4[i]);
         if (count>300) {x4[i] -=v[i];}
    if(x4[i]<0) {x4[i] = 800;}
    float dx = x[i]-x[10];
    float dy = y[i]-y[10];
    float d = sqrt(dx*dx+dy*dy);
        float dx2 = x2[i]-x[10];
    float dy2 = y2[i]-y[10];
    float d2 = sqrt(dx2*dx2+dy2*dy2);
        float dx3 = x3[i]-x[10];
    float dy3 = y3[i]-y[10];
    float d3 = sqrt(dx3*dx3+dy3*dy3);
        float dx4 = x4[i]-x[10];
    float dy4 = y4[i]-y[10];
    float d4 = sqrt(dx4*dx4+dy4*dy4);
      if(d<50) {
    exit();
} else if (d2<50){
  exit();
}else if (d3<50){
  exit();
}else if (d4<50){
  exit();
}
}
count++;
}
