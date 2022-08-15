int snake[][] = new int[5][5];
int xApple,yApple,leng;
void setup(){
  frameRate(1);
  size(5,5);
  xApple = round(random(4));
  yApple = round(random(4));
  leng=3;
  snake[2][2]=leng;
}
void draw(){
  background(0);
  stroke(255,0,0);
  point(xApple,yApple);
  stroke(0,255,0);
  for(int y = 0; y<width; y++){
    for(int x = 0; x<width; x++){
      if(snake[x][y]>0){point(x,y);}
      snake[x][y]--;
      if(key=='w'){snake[x++][y]=leng;}
    }
  }
}
