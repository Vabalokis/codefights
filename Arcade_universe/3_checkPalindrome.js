function checkPalindrome(inputString) {
  var p;
  var k = inputString;

  while(k.length >= 1) { 
   if(k[0] == k[k.length-1]){
     p = true;
   } else {
     p = false;
     break;
   }
    k =  k.substr(1).slice(0, -1); 
  }
  
  return p;
}
