public class Counting_sort{
  public static void main(String[] args) {
    int []a = {3,6,4,1,3,4,1,4,2};

    int max = 0;
    for(int i=0 ; i<a.length ; i++){
      if(a[i] > max){ 
        max = a[i];
      }
    }

    System.out.println("Sorted Array : ");
    int[] b = CountSort(a,max);
    
    for(int i=0 ; i<b.length ; i++){
      System.out.println(b[i]);
    }
  }

  public static int[] CountSort(int a[], int max){
    int []b = new int[a.length];
    int []c = new int [max+1];

    for(int i=0 ; i<a.length ; i++){
      c[a[i]]++;
    }
    for(int i=1 ; i<c.length ; i++){
      c[i] += c[i-1];
    }
    for(int i=a.length-1 ; i==0 ; i--){
      b[c[a[i]]-1] = a[i];
      c[a[i]]--;
    }
    return b;
  }
}