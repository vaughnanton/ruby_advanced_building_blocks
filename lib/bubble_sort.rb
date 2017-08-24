def bubble_sort(array)
  #while array is not equal to its sorted self
  while array != array.sort
    #from index 0 up to length minus 2
    0.upto(array.length-2) do |i|
      #compare indices
      if array[i] > array[i+1]
        array[i],array[i+1] = array[i+1],array[i]
      end
    end
  end
  print array
end

num = [7, 3, 6, 1, 2, 5, 4]
num1 = [7, 5, 3, 6, 8]
num2 = [3, 2, 1]
bubble_sort(num)
bubble_sort(num1)
bubble_sort(num2)

def bubble_sort_by(array)
  #while array is not equal to its sorted self
  while array != array.sort
    #from index 0 up to length minus 2
    0.upto(array.length-2) do |i|
      #compare indices
      if array[i] > array[i+1]
        array[i],array[i+1] = array[i+1],array[i]
      end
    end
  end
  print array
end

bubble_sort_by(["hi","hello","hey"]) {|left,right| right.length - left.length}
