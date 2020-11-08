Particle [] bob = new Particle[1000];
void setup()
{
  size(400,400);
  background(0);
  frameRate(40);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Particle();
    bob[0] = new OddballParticle(); 
  }
}
void draw()
{
  for (int j = 0; j < bob.length; j++){
    bob[j].show();
    bob[j].move();
  }
}
class Particle
{
  double myAngle, mySpeedX, mySpeedY, myX, myY, mySize;
  int myColor;
Particle()
  {
    //myX = 200;
    //myY = 150;
    myX = myY = 200;
    myAngle = (Math.random() * 2 * Math.PI);
    mySpeedX = Math.cos(myAngle) * (Math.random() * 1.2);
    mySpeedY = Math.sin(myAngle) * (Math.random() * 1.2);
    //myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myColor = color(255,255,255);
    mySize = 1;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize); 
  }
  void move()
  {
   mySize += .005;
   myX += mySpeedX;
   myY += mySpeedY;
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle()
  {
    myX = 200;
    myY = 400;
    mySize = 40;
    myColor = color(255,255,0);
    mySpeedY = .5;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
  void move()
  {
    mySize -= 0.1;
    myY -= mySpeedY;    
  }
}
