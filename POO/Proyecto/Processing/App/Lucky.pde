import java.util.Arrays;

class Lucky extends Sequence {
  int x, y;
  int ln;
  int n= 12;

  int c=n;
  int del=1;
  int k;
  
  String author = "Josefo Flavio";
  String description = "Despliega los numeros de la suerte";
  

  
  String author(){   
     return author;
  }
  
  String description(){
     return description;
  }


  int compute(int n) {

    ln = n*15;
    int a[]=new int[ln];
    for (int i=0; i<ln; i++) { 
      a[i]=i+1;
    }

    while (del<ln) {

      for (int i=del; i<ln; i+=del) {
        for (int j=i; j<ln-1; j++) {
          a[j]=a[j+1];
        }
        ln--;
      }
      del++;
    }


    return a[n+1];
  }


  void display(int n) {

    for (int i=0; i<n; i++) {



      x += 22;
      y += 22;
      ellipse(x, y, compute(i)*8, compute(i)*3);
      fill(255, 0, 0);
    }
    x=0;
    y=0;
  }
}