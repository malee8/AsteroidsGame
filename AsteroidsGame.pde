Spaceship bob = new Spaceship();
Star[]joe;
ArrayList <Asteroid> rocks=new ArrayList <Asteroid>();
public void setup() 
{
  size(1000,1000);
  joe=new Star[100];
  for(int i=0;i<joe.length;i++){
    joe[i]=new Star();
  }
  for(int i=0;i<10;i++){
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i=0;i<rocks.size();i++){
    rocks.get(i).move();
    rocks.get(i).show();
    float d=dist((float)bob.getX(),(float)bob.getY(),(float)rocks.get(i).getX(),(float)rocks.get(i).getY());
    if(d<20){
      rocks.remove(i);
    }
  }
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
  }
  bob.myXspeed=bob.myXspeed*0.99;
  bob.myYspeed=bob.myYspeed*0.99;
  bob.move();
  bob.show();
  for(int i=0;i<joe.length;i++){
    joe[i].show();
  }
}
public void keyReleased(){
  if(key=='s'){
      ((Spaceship)bob).hyperspace();
    }
}
