int yp,ye;
float xb=2,yb=1,speedX=0.1,speedY=0.1;
void setup(){
  size(5,5);
  smooth(0);
  frameRate(10);
  stroke(255);
}
void draw(){
  background(0);
  drawR(4,yp);
  drawR(0,ye);
  point(xb,yb);
  xb+=speedX;
  yb+=speedY;
  if(xb>=width-1||xb<=0){speedX=-speedX;}
  if(yb>=height-1||yb<=0){speedY=-speedY;}
  if(xb>=width-1){println("GameOver");noLoop();}
  if(xb<=0){println("Won");noLoop();}
  if(xb>width-2&&yb>=yp&&yb<=yp+1){speedX=-speedX;}
  if(xb<0+1&&yb>=ye&&yb<=ye+1){speedX=-speedX;}
  if(yb>ye){ye++;}
  if(yb<ye){ye--;}
}
void drawR(int x,int y){
  point(x,y);
  point(x,y+1);
}
void keyPressed(){
  if(key=='w'){yp--;}
  else if(key=='e'){yp++;}
}
