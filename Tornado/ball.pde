class ball
{
  float x;
  float y;
  float t;
  int a,b;
  int r;

  float cx;
  float cy;

  int rCol,gCol,bCol;
  color col;
  
    ball() 
    {
    cx=(int)(width/2 );
    cy=random(30,height-20);
    b = (int)+ random(-xNoise,xNoise)*(height/10)/(int)cy + (int)(height/30); // major axis of ellipse
    //b= b+(int)random(-10,10);
    a = (int)50*(width/3)/(int)cy*2; // minor axis of ellipse
    t = random(30000,50000);
    rCol = (int)random(10,200);
    gCol = (int)random(10,200);
    bCol = (int)random(10,200);
    }
  
  void drawBall(){
 
    noStroke();
   /* fill(100);
    text("a:"+a,10,10);
    text("b:"+b,10,30);
    text("cx:"+cx,10,50);
    text("cy:"+cy,10,70);
    text("x:"+x,10,90);
    text("y:"+y,10,110);*/
   
    fill(1);
    float offset = y*3/cy;
    r = (int)((float)size*(offset));
    text(offset,10,10);
    int alpha =  (int)offset*100;
    text(alpha,10,20);
    
    
    fill(rCol, gCol, bCol,alpha);
    circle(x, y, r);
  }
  
  void updateBall(){
      t += speed;
      x = (int)(cx + a * cos(t));
      y = (int)(cy + b * sin(t));
      
  }
}
