import java.util.*;
 
class Case5
{
    public static int uniqueCount(String str) 
    {
       HashSet<Character> al = new HashSet<Character>();
       char[] arr= str.toCharArray();
       for (int i=0; i<arr.length; i++) 
       {
          al.add(arr[i]);  
       }
       return al.size() ;
    }  
 
 
    public static void main(String args[])
    {
       Scanner sc = new Scanner(System.in);
       String str = sc.next();
       System.out.println(uniqueCount(str));
 
    }
}