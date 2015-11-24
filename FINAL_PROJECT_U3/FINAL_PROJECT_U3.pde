
void setup()
{
  size(700, 750);
  
   float[] time = new float[120]; 
   
   for(int i = 1; i > 0; i++)
   {
     time[0] = time[i]; 
   }
   
   printArray(time); 
   
}

void draw()
{
  background(255); 
  int s = second(); 
  line(s, 30, s, 50); 
  
  
 
} 