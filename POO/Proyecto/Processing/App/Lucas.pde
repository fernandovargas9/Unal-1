class Lucas extends Sequence{
  
  int n = 20;
  
  int maxi = compute(n);
  String author = "Édouard Lucas.";
  String description = "Compute, graph, and display the n term of the Lucas Numbers sequence";
   
  String author(){
   
    return author;
  }
  
  String description(){
  
    return description();
  }
   
  int compute(int n){
  
    if (n == 0){
    
      return 2;
    }
    else if (n == 1){
    
      return 1;
    }
    else{
    
      return (compute(n-1) + compute(n-2));
    }
  }
  
  void display(int n){
  
    int x = n;
    int x1 = n;
    float max = sqrt(compute(x1)+compute(x1));
    float[] numbers = new float[x+1];
    int[] num = new int[x+1];
    int w=(width/2),y=(height/2);
    
    for( int i = x; i > -1; i-- ) {
      
        numbers[i] = 0;   
        numbers[i] = compute(i);
        println(int(numbers[i]) + " ");
        pushMatrix();
        translate(w,y);
        rotate(radians(45*i));
        fill(map(numbers[i],0,max,0,255),map(numbers[i],0,max,x,0),map(numbers[i],0,max,0,x));
        triangle(0.0,0.0,0.0,map(numbers[i],0,max,0,width),map(numbers[i],0,max,0,height),map(numbers[i],0,max,0,height));
        popMatrix();
        }
    }
}