//Setting level-value, creating font variable and making a player of the Player class,
int level=0;
PFont f;
int xPos=375;
int yPos=700;
int speed=25;



void setup()
{
size(750,750);
smooth();
frameRate(60);
f=createFont("Arial",16,true);     
}

void draw()
{

  //Level 0: Start screen and explains how to move
  if(level==0)
  {
    background(0);
    textFont(f,16);
    fill(255);
    text("Use the arrow keys to solve the puzzles",width/2-150,height/2-75);
    text("Press Enter to start the game",width/2-115,height/2);
  }
  
  //Level 1:
  else if(level==1)
  {
    background(0);
    
    //Display the player
    Player player1 = new Player("circle",xPos,yPos,color(255,0,0));
    player1.display();
    
    //Display gates
    Player player2= new Player("circle",100,100,color(255,0,0));
    player2.display();
    
    
    
  }  
}  

void keyPressed()
{
  //Start the Game
  if(level==0)
  {
     if(keyCode==ENTER)
     {
       level++;
     }  
  } 
  
  //Player movement
      //Move up
    if (keyCode == UP && yPos-speed >= 0)
    {
     yPos-=speed;
    }
    
    //Move down
    else if (keyCode == DOWN && yPos+speed <= height)
     {
       yPos+=speed;
     }
     
    //Move left 
    else if (keyCode == LEFT && xPos-speed >= 0)
     {
       xPos-= speed;
     }
     
    //Move right 
    else if (keyCode == RIGHT && xPos+speed <= width)
     {
       xPos+=speed;
     }   
}  
