var _ = {
   map: function(array, callback) {
    
     for (var i=0; i < array.length; i++){
      array[i] = callback(array[i]);
     }
     return array;
   },

   reduce: function(array, callback, memo) {
    el = 0;
    if (!memo){
      memo = array[0];
      el = 1;
    }

    for (var i =el; i<array.length; i++){
      memo = callback(array[i], memo)
    }

    return memo;
     // code here;
   },

   find: function(array, callback) {   
     // code here;
     for (var i =0; i < array.length; i++){
      if (callback(array[i])){
        return array[i];
      }
     }
   },

   filter: function(array, callback) {
    var tempArray = []
    for (var i = 0; i < array.length; i++){
      if (callback(array[i])){
        tempArray.push(array[i])
      }
    } 
    return tempArray;
     // code here;
   },

   reject: function(array, callback) { 
     // code here;
     var tempArray =[];
     for (var i =0; i<array.length; i++){
      if (callback(array[i])){
        tempArray.push(array[i])
      }
     }
     return tempArray;
   }
 }
// you just created a library with 5 methods!



var array= [3,4,5]

//console.log(_.map(array, function callback(i){return i*2}))
// console.log(_.find(array, function callback(x){return x == 3;}))
// console.log(_.reject(array, function callback(x){return x != 4;}));

console.log(_.reduce(array, function callback(x, memo){return memo + x;}));



//console.log(_.filter(array, function(num){return num > 4}))
