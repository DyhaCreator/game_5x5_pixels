float posP=1,yp,xe=6,ye,posE;
boolean game=true;
int frame;
void setup(){
  frameRate(10);
  size(3,2);
  stroke(255);
  posE=random(-1,1);
  delay(1000);
  frame=0;
}
void draw(){
  background(0);
  if(game==true){
    if(posP==0){yp=0;}
    else{yp=1;}
    if(posE<0){ye=0;}
    else if(posE>0){ye=1;}
    xe-=0.1;
    if(xe<=0){xe=5;posE=random(-1,1);}
    if(xe>=0&&xe<=0.9&&ye==yp){
      println("GameOver");
      game=false;
    }
    stroke(#1FFF03);
    point(0,yp);
    stroke(#FF0303);
    point(xe,ye);
  }
  else{
    frame++;
  }
}

void keyPressed(){
  if(key=='w'){posP=0;}
  else if(key=='e'){posP=1;}
}
