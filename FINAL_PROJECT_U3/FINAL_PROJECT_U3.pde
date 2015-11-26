import shiffman.box2d.*;

float lastTime; 
float StopWatchTime; 
var box2d; 

void setup()
{
  size(700, 750);
  box2d = new PBox2D(this); 
  box2d.createWorld(); 
}

void draw()
{
  background(255); 
  
  box2d.setGravity(0, -10); 
    
  stopWatch(); 
   if(StopWatchTime >= 120)
  {
    fill(255,0,0); 
    text("TIME UP STOP", 250,250); 
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