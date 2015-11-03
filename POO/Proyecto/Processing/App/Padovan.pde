import java.util.Arrays;


 class Padovan extends Sequence  {
 
    int Cxi =0;
  int Cxf = 10;
   
  String author = "Van der Lan";
  String description = "La sucesión de Padovan es la secuencia de números enteros que suma el segundo termino anterior y el tercero anterior";
  

  
  String author(){   
     return author;
  }
  
  String description(){
     return description;
  }
  
  int compute(int n){
     if(n == 0 || n == 1 || n == 2)
            return 1;
        else
            return compute(n-2) + compute(n-3);
   }
 

  void display(int n){
  for (int i = 0; i <= n; i++) {
      Cxi += 20;
      Cxf += 20;
      fill(255, compute(i), 60);
 
      rect(Cxi,Cxf,compute(i),compute(i));
    }
      Cxi =0;
       Cxf = 10;
  }
  
  

  
 
}