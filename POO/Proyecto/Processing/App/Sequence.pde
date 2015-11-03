import java.util.Arrays;

abstract class Sequence {
  /**
   * The name of the author
   */
  abstract String author();
  
  /**
   * The sequence description
   */
  abstract String description();
  
  /**
   * Computes the nth sequence term
   */
  abstract int compute(int n);
  
  /**
   * Returns the first n seq terms as an array.
   */
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
  
  /**
   * Returns the first n seq terms as a string.
   * Sequence may then simply be printed as: println(sequence.toString(n))
   */
  String toString(int n) {
    return Arrays.toString(toArray(n));
  }
  
  // All display functions must scale the canvas properly
  
  /**
   * Display n seq terms as you wish
   */
  abstract void display(int n);
   
  /**
   * Display n seq terms as a bar chart: https://en.wikipedia.org/wiki/Bar_chart
   * Warning: Should be implemented here in the super class!
   */
  void barChart(int n) {
    
    pushMatrix();
    translate(0,(height));
    rotate(radians(-90));
    int maxi = compute(n);
    int cont = 0;
    for(int i = 0;i < n;i++){
      
        rect(0,cont,compute(i),(n/height)-20);
        cont = cont +((n/height)+20);
     }
     popMatrix();
  }
  
  void lineChart(int n) {
    
     pushMatrix();
     translate(0,height);
     stroke(255);
     int x = 0, y = 0, maxi = compute(n);
     for(int i = 0; i < n; i++){
        line(x,y,map(compute(i),0,maxi,0,width),(-1)*map(compute(i),0,maxi,0,height));
        x = x + int(map(compute(i),0,maxi,0,width));
        y = y - int(map(compute(i),0,maxi,0,height));
        println(compute(i) + "  " + x + "   " + y + "   " + map(compute(i),0,maxi,0,width) + "   " + map(compute(i),0,maxi,0,height));
     } 
     popMatrix();
}
  
  void curveFitting(int n) {
  int max = (compute(n));
    int w = width/2;
    int h = height/2;
    int cont2 = 1;beginShape();
    for (int i = 2; i <= n; i++ ){
    
      int tmp = compute(i);
      float l = map(i,0,width,0,max);
      float m = map(i,0,height,0,max);
      //println( l + " " + m);
      switch(cont2){

      case 1:
        curveVertex(w,h);
        w = w+tmp;
        h = h-tmp;
        cont2 = cont2 +1;;
        break;
        
      case 2:
        curveVertex(w,h);
        w = w+tmp;
        h = h+tmp;
        cont2 = cont2+1;;
        break;
       
       case 3:
        curveVertex(w,h);
        w = w-tmp;
        h = h+tmp;
        cont2 = cont2+1;;
        break;
       
       case 4:
        curveVertex(w,h);
        w = w-tmp;
        h = h-tmp;
        cont2 = 1;
        break;
      }}endShape();
    
  }
}