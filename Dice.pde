void setup()
{
  noLoop();
  size(400, 400);
}
void draw()
{
  background(0);
  int numRolls = 0;
  for(int y =75; y <= 275; y += 100) {
    for(int x = 75; x <= 275; x+=100) {
      Dice die = new Dice(x, y);
      die.show();
      die.roll();
      numRolls = numRolls + die.num;
    }
  }
  fill(255);
  text(numRolls, 200, 350);
  
}
void mousePressed()
{
  redraw();
}
class Dice 
{
  int myX, myY, num;
  Dice(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    num = (int)(Math.random() * 6 ) + 1;
    if (num == 1) {
      fill(0);
      ellipse(myX +25, myY +25, 5, 5);
  }
    if (num == 2) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
    }
    if (num == 3) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    if (num == 4) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
      ellipse(myX + 38, myY + 12, 5, 5);
      ellipse(myX + 12, myY + 38, 5, 5);
    }
    if (num == 5) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
      ellipse(myX + 38, myY + 12, 5, 5);
      ellipse(myX + 12, myY + 38, 5, 5);
      ellipse(myX + 25, myY+ 25, 5 , 5);
    }
    if (num == 6) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
      ellipse(myX + 38, myY + 12, 5, 5);
      ellipse(myX + 12, myY + 38, 5, 5);
      ellipse(myX + 38, myY + 25, 5, 5);
      ellipse(myX + 12, myY + 25, 5, 5);
    }
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50);
  }
}
