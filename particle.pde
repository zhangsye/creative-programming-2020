class particle {
  PVector loc=new PVector(random(width), random(height));
  PVector vel=new PVector(0, 0);
  PVector acc=new PVector();
  int x=0;
  int y=0;
  float r=random(50,100);
  int index;
  PVector force;  
  
 boolean fading(){
  if (period<0){
  return true;
}else{
return false;
}
}
  

  void update() {
    vel.add(acc);
    vel.limit(2);
    loc.add(vel);
    acc.mult(0);
  }

  void follow(PVector f) {  
    force=f;
    acc.add(force);
  }

  void show() {
  stroke(237,177,143,30);
  strokeWeight(0.5);
  noFill();
   ellipse(loc.x, loc.y, r, r);
   noStroke();
   fill(233,230,213,10);
   ellipse(loc.x, loc.y, r/3, r/3);
  }

  void edge() {
    if (loc.x<0) {   
      loc.x=width;
    } else if (loc.x>width) {
      loc.x=0;
    } else if (loc.y<0) {
      loc.y=height;
    } else if (loc.y>height) {
      loc.y=0;
    }
  }
  
  void life(){
    period=10;
    rate=random(5,8);
    period-=rate;
  }
  
  void run(){
   list=new ArrayList<particle>();
for( int i=list.size()-1;i>=0;i--){
  particle p=list.get(i);
  if(p.fading()){
  list.remove(i);
}
}}
/*void shape(){
    int fnum;
    int fangle=45;
    int radius=50;
    fnum=floor(360/fangle);
    translate(loc.x,loc.y);
    noFill();
    stroke(237,177,143,20);
    for(int j=0;j<fnum;j++){
    float x1=sin(radians(j*fangle))*radius;
    float x2=sin(radians((j+1)*fangle))*radius;
    float y1=cos(radians(j*fangle))*radius;
    float y2=cos(radians((j+1)*fangle))*radius;
    bezier(x1,y1,x1+x2,y1+y2,x1+x2,y1+y2,x2,y2);
     bezier(x1,y1,x1-x2,y1-y2,x2-x1,y2-y1,x2,y2);
  }
}*/
}
