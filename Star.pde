class Star{
  private int myX, myY;
  public Star(){
    myX=(int)(Math.random()*1000);
    myY=(int)(Math.random()*1000);
  }
  public void show(){
    noStroke();
    fill(255);
    ellipse(myX,myY,5,5);
  }
}
