import java.io.*;

public class Lab11_2 {
  public static void main(String[] args) {
    String path = args[0];
    File f = new File(path);

    if(f.isFile()){
      System.out.println("Length = " + f.length()+ " bytes");
    }
    else if(f.isDirectory()){
      System.out.println("Listing files in directory: " + f.getAbsolutePath());
      File[] files = f.listFiles();
      if(files!=null){
        for(int i=0;i<files.length;i++){
          if(files[i].isFile()){
            System.out.println(files[i].getName());
          }
        }
      }
      else{
        System.out.println("No files found in directory");
      }
    }
  }
}
