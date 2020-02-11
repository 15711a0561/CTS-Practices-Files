import java.util.*;
class Billno
{
	public static void main(String args[])
{
	int billnumber;
int date=0;
Scanner sc=new Scanner(System.in);
System.out.println("enter billnumber");
billnumber=sc.nextInt();
System.out.println("enter your date");
if(date>0||date<31)
{
date=sc.nextInt();
}
int finale=(billnumber%100);
if(finale==date||(billnumber%date)==0)
{
	System.out.println("you are lucky customer");
}
else
 System.out.println("you are not lucky customer");
}
}
	