import java.lang.annotation.*;
import java.lang.reflect.*;

@Retention(RetentionPolicy.RUNTIME)
@interface MyAnno {
  String str();
  int val();
}

@Retention(RetentionPolicy.RUNTIME)
@interface What {
  String description();
}


@What(description = "��������� ���������� ������")
@MyAnno(str = "Meta2", val = 99)


public class Meta2{   //0               

  @What(description = "��������� ��������� ������")
  @MyAnno(str = "Testing", val = 100) 

  public static void myMeth(String str, int i)
  {  //1
    
     Meta2 ob = new Meta2();

    try { //2

       Annotation annos[] = ob.getClass().getAnnotations();
      System.out.println("��� ��������� ��� ������ Meta2:");
      
      for(Annotation a : annos)
         System.out.println(a);

      System.out.println("dddd");

  
//      Method m =  ob.getClass("���� ���������� � ������. � ����� ���-�� �� �����").getMethod("myMeth");
//      Method m =  ob.getClass().getMethod("myMeth");
      Method m = ob.getClass() .getMethod( "myMeth");
      System.out.println("dfdd");
      annos = m.getAnnotations();

      System.out.println("��� ��������� ��� ������ MyMeth():");

     for(Annotation a : annos)
       System.out.println(a);    

      } //2

      catch (NoSuchMethodException exc) { //2a
         System.out.println("����� �� ������. ");     

     }   //2a




  } //1
 
public static void main(String[] args) {   //1 
  myMeth("����", 10);     
     
     
     
}   //1 
}   //0 
