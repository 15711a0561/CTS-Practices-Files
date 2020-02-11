import java.util.*;
class Wm
{
	public static void main(String args[])
	{
           int n;
             Scanner sc=new Scanner(System.in);
              n=sc.nextInt();
             if(n%2==0)
               {
                 System.out.println("equal parts are= "+n/2+" "+n/2);
               }
               else
                {
                  System.out.println("Can't Divide");
                }
            for(int i=1;i<n;i++)
                {
                   System.out.println(i +"  "+(n-i));
                }
          }
}