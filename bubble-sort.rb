def bubble_sort(array)
  length = array.length - 2
  until length == 0 
    for i in 0..length do
      if array[i+1] < array[i]
        array[i], array[i+1] = array[i+1], array[i]
      end  
    end
    length -= 1
  end
  p array
end

bubble_sort([4,3,78,2,0,2,-27,30032,75,74,37,455,02,33])
