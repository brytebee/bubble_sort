def bubble_sort(arr)
  # array size
  arr_length = arr.size - 1
  # keep looping for 1 less than number of elements in array

  # swaps
  swap = 0
  arr_length.times do
    (0..(arr_length - 1)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap += 1
      end
    end
  end
  puts swap
  p arr
end

bubble_sort([8, 7, 9, 5, 4, 2, 6])
