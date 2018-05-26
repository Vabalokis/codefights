function adjacentElementsProduct(inputArray) {
var k;
var t = 0;    
    for(var i = 0; i < inputArray.length-1 ;i++){
        k = inputArray[i]*inputArray[i+1];
        if(i==0 && inputArray[0] < 0){
             if(Math.abs(k) > t){
             t = k;
             } 
        } else {
             if(k > t){
             t = k;
             }   
        }
 
    }  
    return t;    
}
