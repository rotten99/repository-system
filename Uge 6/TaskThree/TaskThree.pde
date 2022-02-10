int backgroundColour=0;
color yellow=color(255, 255, 0);
color red=color(255, 0, 0);
color green=color(0, 255, 0);

void setup()
{
  size(600, 600);
  smooth();
  frameRate(1);
}

void draw()
{
  background(165);
  rectMode(CENTER);
  ellipseMode(CENTER);

  //Square for the trafficlight
  fill(backgroundColour);
  rect(300, 300, 100, 300);

  if (frameCount % 2==0 && frameCount>1)
  {    
      //Yellow light turned off
      fill(165);
      ellipse(300, 300, 75, 75);

      //Red light  turned off
      fill(165);
      ellipse(300, 200, 75, 75);

      //Green light 
      fill(green);
      ellipse(300, 400, 75, 75);
  }
  else if (frameCount % 2 !=0 && frameCount>2)
  {
          //Yellow light turned off
      fill(165);
      ellipse(300, 300, 75, 75);

      //Red light
      fill(red);
      ellipse(300, 200, 75, 75);

      //Green light  turned off
      fill(165);
      ellipse(300, 400, 75, 75);
    }
  else
  {
    //Yellow light
    fill(yellow);
    ellipse(300, 300, 75, 75);
  
    //Red light
    fill(red);
    ellipse(300, 200, 75, 75);
  
    //Green light
    fill(green);
    ellipse(300, 400, 75, 75);
  }

}
