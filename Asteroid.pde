class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    myCenterX=(int)(Math.random()*1001);
    myCenterY=(int)(Math.random()*1001);
    corners=6;
    xCorners=new int[]{-16+(int)(Math.random()*16-8),-8+(int)(Math.random()*16-8),8+(int)(Math.random()*16-8),16+(int)(Math.random()*16-8),8+(int)(Math.random()*16-8),-8+(int)(Math.random()*16-8)};
    yCorners=new int[]{0+(int)(Math.random()*16-8),14+(int)(Math.random()*16-8),14+(int)(Math.random()*16-8),0+(int)(Math.random()*16-8),-14+(int)(Math.random()*16-8),-14+(int)(Math.random()*16-8)};
    rotSpeed=Math.random()*10-5;
    myColor=color(255);
    myXspeed=(int)(Math.random()*11)-5;
    myYspeed=(int)(Math.random()*11)-5;
    myPointDirection=0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
