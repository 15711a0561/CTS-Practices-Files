import java.util.*;
import java.lang.String;
class str
    {
       public static void main(String args[])
        {
           String s1="WELCOME TO JAVA WORLD";
           String s2="welcome";
           String s3="Let us learn";
           char ch;
           ch=s1.charAt(5);
           System.out.println(ch);
           System.out.println(s1.equalsIgnoreCase(s2));
           System.out.println(s1.concat(s3));
           System.out.println("the index of a is in :" +s1.indexOf('A'));
            System.out.println(s1.replace('A','E'));
             System.out.println(s1.substring(4,10));
           

        }
      }