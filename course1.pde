int num= 10;
int x=0;
int y=0;
float count=0.0;
float t=0.0;
int radius=1;
int radius1=300;
int step=1;
int r=1;

void setup()
{
  //初始化一个具备长宽的容器
  size(900,900);
  fill(0); 
  frameRate(60);
}

void draw()
{
  background(255);      
       //两个不断放大缩小的圆交错变化
       fill(243,170,88,100);
       stroke(243,170,88,100);
       circle(width/2,height/2,radius);
       radius=radius+step;
       if(radius>900){
       radius=radius*-1;}
       fill(243,170,88,80);
        stroke(243,170,88,100);
       strokeWeight(48.0);
       circle(width/2,height/2,radius1);
       radius1=radius1+step;
       if(radius1>900){
       radius1=radius1*-1;}
       
   //用两层for循环实现十字形的行列分布
  for(int i =1; i<=num; i++)
  {
    x=(width/10)*i-45;   
      for(int j =1; j<=num; j++)
    {      
       y=(height/10)*j-45;
      
       //变量t控制斜线长度和线宽的周期性变化
       fill(0);  
       stroke(3,101,100,100);
       strokeWeight(abs(16.0*t+10));
       line(x-50*t,y+50*t,x+50*t,y-50*t);
       strokeCap(ROUND);
       
       stroke(3,101,100,100);
       strokeWeight(abs(16.0*t+10));
       line(x+50*t,y+50*t,x-50*t,y-50*t);
       strokeCap(ROUND);    
     
       //正弦函数实现长度在一定范围内波动
       count+=0.02;
       t=(sin(0.002*PI*count));
       r=r+1;                    
       }          
    }      
   }    
//鼠标移动画圆
void mouseMoved() {
    fill(51);
    noStroke();
    ellipse(mouseX,mouseY,20,20);     
        }
