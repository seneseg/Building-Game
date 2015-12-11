class Boundary {

  //[full] A boundary is a simple rectangle with x, y, width, and height.
  float x,y;
  float w,h;
  //[end]
  Body b;

  Boundary(float x_,float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;

    // Build the Box2D Body and Shape.
    BodyDef bd = new BodyDef();
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    // Make it fixed by setting type to STATIC!
    bd.type = BodyType.STATIC;
    b = box2d.createBody(bd);

    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    PolygonShape ps = new PolygonShape();
    // The PolygonShape is just a box.
    ps.setAsBox(box2dW, box2dH);

    // Using the createFixture() shortcut
    b.createFixture(ps,1);
  }

  // Since we know it can never move, we can just draw it
  // the old-fashioned way, using our original
  // variables. No need to query Box2D.
  void display() {
    fill(0);
    stroke(0);
    rectMode(CENTER);
    rect(0,0,w,h);
  }

}