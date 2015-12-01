class boxes
{
  Box2DProcessing box2d;

  void thebox()
  {
    box2d = new Box2DProcessing(this);

    BodyDef bd = new BodyDef();  //Defining the body
    Vec2 center = new Vec2(width/2, height/2); //A vec 2 in the center of the processing screen

    Vec2 center = box2d.coordPixelsToWorld(width/2, height/2); 
    bd.position.set(center);
    bd.fixedRotation = true;
    bd.linearDamping = 0.8;
    bd.angularDamping = 0.9;
    bd.bullet = true;
 
    Body body = box2d.createBody(bd);

    body.setLinearVelocity(new Vec2(0, 3));
    body.setAngularVelocity(1.2);

  }
}