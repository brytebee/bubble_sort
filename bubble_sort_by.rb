
def bubble_sort_by(arr)
  # array size
  arr_length = arr.size - 1
  # keep looping for 1 less than number of elements in array

  # swaps
  swap = 0
  arr_length.times do
    for i in 0..(arr_length - 1) do 
      if yield(arr[i],  arr[i + 1]) < 0 
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = swap + 1
      end
    end
  end
  puts swap
  p arr
end

bubble_sort_by( ["lovely", "loved", "love", "lo", "James", "Shanana Chronicles"]) {|a, b|b.size <=> a.size}
