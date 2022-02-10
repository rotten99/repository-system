//4.a Print numbers from 0-20
for(int i=0; i<=20; ++i)
{
  println(i);
}  


//4.B Print even numbers form 0-20
for(int i=0; i<=20; ++i)
{
  if (i %2 ==0)
  {
  println(i);
  }
}  


//4.c turing 4.b into a while loop
int i=0;
while(i<=20)
{
  if (i %2 ==0)
  {
  println(i);
  }
  ++i;
}  
