enum Apple {
  Jonathan, GoldenDel, RedDel, Winesap, Cortland
}


public class EnumDemo{   //0               

public static void main(String[] args) {   //1 
  Apple ap;

  ap = Apple.RedDel;

  System.out.println("�������� ap: " + ap);
  System.out.println();

  ap = Apple.GoldenDel;
  if(ap == Apple.GoldenDel) 
      System.out.println(
         "���������� ap �������� GoldenDel.\n");
  
  switch(ap)  {
    case Jonathan:
      System.out.println("���� Jonathan �������."); 
      break;

    case GoldenDel:
      System.out.println("���� Golden Delicious ������."); 
      break;

    case RedDel:
      System.out.println("���� Red Delicious �������."); 
      break;

    case Cortland:
      System.out.println("���� Cortland �������."); 
      break;
  }
     
     
}   //1 
}   //0 
