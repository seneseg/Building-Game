class Boxes
{
  float x, y; 
  float w, h; 
  Body body; 

  Boxes(float x_, float y_) 
  {
    x = x_; 
    y = y_; 
        
    w = 50;
    h = 50; 

    //Step 1: Define Body
    BodyDef bd = new BodyDef(); 
    bd.type = BodyType.DYNAMIC; 
    bd.position.set(box2d.coordPixelsToWorld(x, y)); 

    //Step 2: Create Body
    body = box2d.createBody(bd); 

    //Step 3: Create Shape
    PolygonShape ps = new PolygonShape(); 
    float box2Dw = box2d.scalarPixelsToWorld(w/2); 
    float box2Dh = box2d.scalarPixelsToWorld(h/2); 
    
    
    ps.setAsBox(box2Dw, box2Dh); 

    //Step 4: Create Fixture
    FixtureDef fd = new FixtureDef(); 
    fd.shape = ps; 
    //Parameters taht affect physics
    fd.density = 1; 
    fd.friction = 0.3;
    fd.restitution = 0.5; 
    //Step 5: Attach the fixture to the body
    body.createFixture(fd); 
  }

  void display()
  {
    
    Vec2 pos = box2d.getBodyPixelCoord(body); 
    float a = body.getAngle(); 
    
    pushMatrix(); 
    translate(pos.x, pos.y); 
    fill(255,213,2);
    rotate(a); 
    stroke(0);
    strokeWeight(1); 
    rectMode(CENTER); 
    rect(0,0,w,h); 
    popMatrix(); 
    
  }
}