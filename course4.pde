int si=0;
int bx=40;
int by=40;
int bw=60;
int bh=30;
int by2=by+bh+20;
int by3=by2+bh+20;
int by4=by3+bh+20;
float speed=0;
float easing=0.05;
int d=0;
int c=0;

void setup(){
size(1280,840);
background(255);
noStroke();
}

void draw(){
  cursor(CROSS);
if((mouseX>bx)&&(mouseX<bx+bw)&&(mouseY>by)&&(mouseY<by+bh)&&mousePressed==true){
stroke(157,78,221);
strokeWeight(3);
fill(157,78,221);
cursor(HAND);
si=0;
}else{
  noStroke();
  fill(198,162,200);
}
rect(bx,by,bw,bh);
if((mouseX>bx)&&(mouseX<bx+bw)&&(mouseY>by2)&&(mouseY<by2+bh)&&mousePressed==true){
  stroke(9,50,252);
  strokeWeight(3);
  fill(9,50,252);
  cursor(HAND);
si=1;
}else{
  noStroke();
  fill(114,150,198);
}
rect(bx,by2,bw,bh);
if((mouseX>bx)&&(mouseX<bx+bw)&&(mouseY>by3)&&(mouseY<by3+bh)&&mousePressed==true){
stroke(255,121,16);
strokeWeight(3);
fill(255,121,16);
cursor(HAND);
si=2;
}else{
noStroke();
fill(254,153,63);
}
rect(bx,by3,bw,bh);
if((mouseX>bx)&&(mouseX<bx+bw)&&(mouseY>by4)&&(mouseY<by4+bh)&&mousePressed==true){
stroke(250,96,96);
strokeWeight(3);
fill(250,96,96);
cursor(HAND);
si=3;
}else{
noStroke();
fill(251,206,201);
}
rect(bx,by4,bw,bh);

float m = dist(mouseX, mouseY, pmouseX, pmouseY);
speed += (m - speed) * easing;
if(((mouseX<bx)||(mouseX>bx+bw)||(mouseY<by)||(mouseY>by+bh))&&si==0&&mousePressed==true){
  stroke(157,c,221);
  strokeWeight(speed/2);
  line(mouseX,mouseY,pmouseX,pmouseY);  
}
if(((mouseX<bx)||(mouseX>bx+bw)||(mouseY<by2)||(mouseY>by2+bh))&&mousePressed==true&&si==1){
  fill(9,50,252,50);
  ellipse(mouseX,mouseY,40,40);
}
if(((mouseX<bx)||(mouseX>bx+bw)||(mouseY<by3)||(mouseY>by3+bh))&&mousePressed==true&&si==2){
  fill(255,121,16,60); 
    for(int i = 0; i < 4; i++) {
      translate(mouseX,mouseY);
      rect(0,0,30,30);
 }
}
if(((mouseX<bx)||(mouseX>bx+bw)||(mouseY<by4)||(mouseY>by4+bh))&&mousePressed==true&&si==3){
  stroke(250,96,c,70);
  strokeWeight(30);
  line(mouseX,mouseY,pmouseX,pmouseY);  
  }
}
void mouseDragged() {
  c =c +2;
  if (c > 255) {
    c = 0;}
}
