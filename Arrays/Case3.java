import java.util.*; 
 class Case3{
  public List<Integer> getCList(){
       List<Integer> p=new ArrayList<>();
        List<Integer> s=new ArrayList<>();
          
       for(int i=1;i<=10;i++)
          {
             p.add(i);
             }          
    for(int i=11;i<=15;i++)
          {
             s.add(i);
           }          
   p.addAll(s);
   return s;
}
 public static void main(String[] args) {
    Case3 sum=new Case3();
   List<Integer> arr=new ArrayList<>();
    arr=sum.getCList();
    System.out.println(arr);
}
}
