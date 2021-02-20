def bubble_sort(arr)
  # array size
  arr_length = arr.size - 1
  # keep looping for 1 less than number of elements in array

  # swaps
  swap = 0
  arr_length.times do
    i = 0
    for i in 0..(arr_length - 1) do 
      if arr[i] > arr[i + 1] 
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = swap + 1
      end
    end
  end
  puts "Array is sorted in #{swap} swaps."
  puts "First Element: #{arr[0]}"
  puts "Last Element: #{arr[arr_length]}"
  p arr
end

bubble_sort([18, 2, 4, 5, 7, 50, 15, 19])
