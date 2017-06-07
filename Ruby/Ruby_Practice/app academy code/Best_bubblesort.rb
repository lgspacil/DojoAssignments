def bubbleSort(arr)
  
  num = arr.length
  
  loop do
    
    sorted = false
    
    (num-1).times do |i|
      if arr[i] > arr[i+1]
         arr[i], arr[i+1] = arr[i+1], arr[i]
         sorted = true
       end
       puts sorted
       puts arr
     end
     break if sorted == false
   end
   arr
 end
 
 puts bubbleSort([5,4,3,2,1])