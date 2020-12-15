float speed=0.008;
int scale=30;
int colume;
int row;
float zoff=0;
int num=30;
particle[] particles;
PVector[] fields;
 float period,rate;
  ArrayList<particle>list;
 
void setup() {
 background(255, 10);
 frameRate(60);
  size(960, 720,P3D);
  colume=width/scale;
  row=height/scale;
  particles = new particle[num];
  fields=new PVector [colume*row];

  for (int i=0; i<num; i++) {
    particles[i]=new particle();
  }
  
}

void draw() {

  float yoff=0;
  for (int y=0; y<row; y++) {
    float xoff=0;
    for (int x=0; x<colume; x++) {
      int index=x+(y*colume);           
      float angle=noise(xoff,yoff,zoff)*TWO_PI*4;
      PVector single=PVector.fromAngle(angle);
      single.setMag(0.15);
      fields[index]=single;

      xoff+=speed;
      
      stroke(255,10);
     strokeWeight(1);
      pushMatrix();
      translate(x*scale, y*scale);
      rotate(single.heading());
     line(0, 0, scale, 0);
      popMatrix();
    }

    yoff+=speed;
    zoff+=0.8*speed;
  }
  //println(fields.length);
  //printArray(fields);

  for (int i=0; i<particles.length; i++) {
    particles[i].update();
    action();
    particles[i].follow(fields[floor(particles[i].x/scale)+floor((particles[i].y/scale)*colume)]);
    particles[i].show();
    particles[i].edge();
    particles[i].life();
    particles[i].run();
    
  }
  saveFrame();
}
 void action(){
   if(mousePressed){
  for (int y=0; y<row; y++) {
    for (int x=0; x<colume; x++) {
      int index=x+(y*colume); 
     PVector change=new PVector(mouseX-x*scale,mouseY-y*scale);
     change.setMag(0.15);
      fields[index]=change;
    }
  }
   }
  }
  
  
  
