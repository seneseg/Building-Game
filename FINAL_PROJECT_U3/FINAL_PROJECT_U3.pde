/*import shiffman.box2d.*;
 import org.jbox2d.collision.shapes.*; 
 import org.jbox2d.common.*; 
 import org.jbox2d.dynamics.*; */

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
Boxes b; 


ArrayList<Boxes> boxes; 

float lastTime; 
float StopWatchTime; 
Box2DProcessing box2d;

void setup()
{
  size(700, 750);
  box2d = new Box2DProcessing(this); 
  box2d.createWorld(); 
  boxes = new ArrayList<Boxes>();
}

void draw()
{
  background(255); 
  box2d.step();
  b.display(); 

  if (mousePressed)
  {
    Boxes p = new Boxes(mouseX, mouseY);
    boxes.add(p);
  }

  //STOPWATCH
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