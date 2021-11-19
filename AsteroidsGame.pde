Floater bob = new Spaceship();
Star[]joe;
public void setup() 
{
  size(500,500);
  joe=new Star[100];
  for(int i=0;i<joe.length;i++){
    joe[i]=new Star();
  }
}
public void draw() 
{
  background(0);
  if(keyPressed){
    if(key=='a'){
    bob.turn(-5);
    }
    if(key=='d'){
    bob.turn(5);
    }
    if(key=='w'){
      bob.accelerate(.1);
    }
    if(key==' '){
      ((Spaceship)bob).hyperspace();
    }
  }
  bob.move();
  bob.show();
  for(int i=0;i<joe.length;i++){
    joe[i].show();
  }
}
