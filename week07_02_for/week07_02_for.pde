//陣列、for迴圈: 五子棋(棋盤)
//int go[][]:C語言
//int [][]go= new int[][];Java/Processing
int [][]go={
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0} };
void setup()
{
  size(500,500);
}
void draw()
{
  background(253,236,180);
  for(int i=0; i<9; i++)
  {
     line(50+50*i,50,50+50*i,450);
     line(50,50+50*i,450,50+50*i);
  }
  for(int i=0; i<9; i++){
    for(int j=0; j<9; j++)
    {
      if(go[i][j]==1)
      {
        int x=50+50*j, y=50+50*i;
        fill(255); ellipse(x,y,40,40);
      }else if(go[i][j]==2){
        int x=50+50*j, y=50+50*i;
        fill(0); ellipse(x,y,40,40);
      }//1:白棋 2:黑棋 0:沒有棋
    }
  }
}
void mousePressed()
{
  int j= (mouseX-25)/50;
  int i= (mouseY-25)/50;
  if(mouseButton==LEFT)go[i][j]=1;
  if(mouseButton==RIGHT)go[i][j]=2;
  if(mouseButton==CENTER)go[i][j]=0;
}
