public class MyThirdProgramm_v7 { //0
   
   public static void main(String[] args) {            //1
     int o = 0; // ���-�� ������� �����
      int p = 0; // ������� �������� �����
      long q = 0; // ������ ���������
     long tt = System.currentTimeMillis();
     for(int i= 2;i<10000000;i++) 
          {                                                                  //2    
           p = 0;
           if (i > 10)
                {                                                          // 3
//                  System.out.println(); 
//                  System.out.print("����� - "+i+" ");
                  int r = i % 10;
//                  System.out.print("������ �������� -- ");
                  switch(r)
                    {                                                     // 4
                      case 0:  
                      case 2:  
                      case 4:  
                      case 5:  
                      case 6:  
                      case 8:  
                       p++; 
//                       System.out.print("+ ");
                       break;
                     default : 
//                       System.out.print("- ");
                    }                                                     // 4
//                  System.out.print("� -- " + p+ " "); 
                 }
            else
                 {
//                   System.out.println("������ �������� �� ����������� -- ");
                 }
            if  (p == 0) 
                {                                                            //  4
//                  System.out.print("������ �������� -- ");

                  q = Math.round(Math.sqrt(i))+1; 
                  for(int j= 2;j<q;j++)
                    {
                         if  (i % j == 0)  
                         {                                                      // 5  
                           p++;
                           break;
                         }                                                      // 5
                
                    }



                 }                                                            //  4
 
//                }                                                  // 3 


                  if (p == 0) 
                    {                                                    // +4   
//                      System.out.println(i+" ");
                      o++;
                    }                                                   // -4      






           }                                                                                //2
     System.out.println("Time - "+(System.currentTimeMillis()-tt));
     System.out.println("V7 Count - "+o);
     }                        //1
}       //0
 
/*
           p = 0;
           q = Math.round(Math.sqrt(i))+1; 
           for(long j= 2;j<q;j++)
                 {                                                    
                  // System.out.println(i+" "+j+" "+i % j);
                  if  (i % j == 0)  {p++;break;}
//                  q = i/j+1;
                       }
                  if (p == 0) {
//                      System.out.println(i+" ");
                      o++;
                  }

*/ 