import java.util.*; 
 class Case3{
  public List<Integer> getCList(){
       List<Integer> p=new ArrayList<>();
        List<Integer> s=new ArrayList<>();
          
       for(int i=1;i<=10;i++)
          {
             p.add(i);
             }    
        return p;
}
 public static void main(String[] args) {
    Case3 sum=new Case3();
   List<Integer> arr=new ArrayList<>();
    arr=sum.getCList();
    System.out.println(arr);
}
}
