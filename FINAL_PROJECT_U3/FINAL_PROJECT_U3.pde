import shiffman.box2d.*;

boxes b; 

float lastTime; 
float StopWatchTime; 
Box2DProcessing box2d;

void setup()
{
  size(700, 750);
  box2d = new Box2DProcessing(this); 
  box2d.createWorld(); 
  box2d.setGravity(0, -9.8);
  
  
}

void draw()
{
  background(255); 
  b.thebox(); 
  box2d.step();


  stopWatch(); 
  if (StopWatchTime >= 120)
  {
    fill(255, 0, 0); 
    text("TIME UP STOP", 250, 250);
  }

  fill(0); 
  text("TIME:", 19, 37); 
  text(StopWatchTime, 20, 50);
} 

void stopWatch()
{

  StopWatchTime = millis() - lastTime; 
  StopWatchTime /= 1000;
}