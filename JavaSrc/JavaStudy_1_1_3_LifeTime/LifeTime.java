public class LifeTime{   //0               
 
 
public static void main(String[] args) {   //1 
   int x;
   for(x = 0; x < 3; x++) {
      int y = -1;
      System.out.println("y  �����: " + y);
      y = 100;
      System.out.println("y ������ �����: " + y);  
   }  
     
     
     
}   //1 
}   //0 
