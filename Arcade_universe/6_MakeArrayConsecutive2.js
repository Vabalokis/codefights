function makeArrayConsecutive2(statues) {
    var min = statues[0];
    var max = statues[0];
    var sk = 0;
    
    for(var i = 0 ; i < statues.length ; i++){
        if(statues[i] < min ) {
            min = statues[i];
        }
         if(statues[i] > max ) {
            max = statues[i];
        }
    }
    
    var a = new Array(max-min);
    
    for(var i = 0 ; i < max-min+1 ; i++) {
        a[i] = min+i;    
    }
    
    for(var i = 0 ; i < a.length ; i++) {
        for(var j = 0 ; j < statues.length ; j++) {
            if(a[i] == statues[j]){
                sk++;
            } 
        }
    }
    return a.length - sk;
    
}