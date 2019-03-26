int size=4;
float speed = 0.03;
int xNoise = 50;


ball[] balls = new ball[400];

void setup() {
  
  size(1024,800);
  pixelDensity(2
  );
  smooth(3);
  frameRate(60);


  for (int i=0; i<balls.length; i++){
    balls[i]=new ball();
  }
}

void draw() 
{
  background(255);
  for (int i=0; i<balls.length; i++){
   balls[i].drawBall();
   balls[i].updateBall();
  }
}
  
