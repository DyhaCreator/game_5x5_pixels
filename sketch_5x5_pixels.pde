float posP=1,yp,xe=6,ye,posE;
boolean game=true;
int frame;
void setup(){
  frameRate(10);
  size(5,5);
  stroke(255);
  posE=random(-1,1);
  delay(1000);
  frame=0;
}
void draw(){
  background(0);
  if(game==true){
    if(posP==0){yp=1;}
    else{yp=3;}
    if(posE<0){ye=1;}
    else if(posE>0){ye=3;}
    xe-=0.1;
    if(xe<=0){xe=6;posE=random(-1,1);}
    if(xe>=1&&xe<=1.9&&ye==yp){
      println("GameOver");
      game=false;
    }
    stroke(#1FFF03);
    point(1,yp);
    stroke(#FF0303);
    point(xe,ye);
  }
  else{
    frameRate(3);
    gameOver();
    frame++;
  }
}
void gameOver(){
  switch(frame){
    case 1:
    stroke(#F1FA00);
    point(2,2);
    break;
    case 2:
    stroke(#FA9600);
    point(2,2);
    stroke(#F1FA00);
    point(2,1);
    point(3,2);
    point(2,3);
    point(1,2);
    break;
    case 3:
    stroke(#FA9600);
    point(2,1);
    point(3,2);
    point(2,3);
    point(1,2);
    stroke(#F1FA00);
    point(2,0);
    point(3,1);
    point(4,2);
    point(3,3);
    point(2,4);
    point(1,3);
    point(0,2);
    point(1,1);
    break;
  }
}
void keyPressed(){
  if(keyCode==UP){posP=0;}
  else if(keyCode==DOWN){posP=1;}
}
