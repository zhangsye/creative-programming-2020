int i =0;
int j =0;
int row=8;
int col=8;
void setup(){
size(800,800);
  fill(0,66,92); 
  frameRate(60);
  background(0);
  //将容器分隔成单元
  for(i=0;i<=row;i++){
    for(j=0;j<=col;j++){
    drawShape(int(width/row)*i,int(height/col)*j,int(width/row),int(height/col)) ;
  }
  }
}
 //定义单元中绘图的函数
void drawShape(int posX,int posY,int sideLength,int sideHeight) {
 int choice = floor(random(3));
 //随机确定单元的颜色
  switch(choice){
  case 0:
  noStroke();
  rect(posX,posY,sideLength,sideHeight);
  fill(0,66,92);
break;
case 1:
  noStroke();
  rect(posX,posY,sideLength,sideHeight);
  fill(254,184,186);
break;
case 2:
  noStroke();
  rect(posX,posY,sideLength,sideHeight);
  fill(255,106,89);
break;

}  
}
