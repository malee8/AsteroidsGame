class Spaceship extends Floater{
  public Spaceship(){
    corners=3;
    xCorners=new int[]{-8,16,-8};
    yCorners=new int[]{-8,0,8};
    myColor=255;
    myCenterX=250;
    myCenterY=250;
    myXspeed=0;
    myYspeed=0;
    myPointDirection=0;
  }
  public void hyperspace(){
    myXspeed=0;
    myYspeed=0;
    myPointDirection=(int)(Math.random()*361);
    myCenterX=(int)(Math.random()*501);
    myCenterY=(int)(Math.random()*501);
  }
}
