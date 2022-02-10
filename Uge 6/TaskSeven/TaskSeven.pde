//7.a
int x=20;
int i=0;

if (x>=0)
{
  while (i<=x)
  {

    int y=x-i;
    if (y==x/2)
    {
      println("HALF");
      ++i;
    } 
    else if (y==6)
    {
      println("six");
      ++i;
    } 
    
    else
    {
      println(y);
      ++i;
    }
  }
} 


//7.b If x is a negative number - So now counting up to 0
else
{
  while (i>=x)
  {
    x=-x;
    int y=x-(-i);
    if (y==x/2)
    {
      println("Double"); //Double beacuse we now count up
      --i;
      x=-x;
    } else if (y==6)
    {
      println("negative six"); //If x is negative then the 6 needs to be a negative aswell
      --i;
      x=-x;
    } else
    {
      println(-y);
      --i;
      x=-x;
    }
  }
}
