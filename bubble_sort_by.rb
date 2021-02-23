def bubble_sort_by(arr)
  # array size
  arr_length = arr.size - 1

  # swaps
  swap = 0

  # keep looping for 1 less than number of elements in array
  arr_length.times do
    (0..(arr_length - 1)).each do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap += 1
      end
    end
  end
  puts swap
  p arr
end

bubble_sort_by(%w[functioning? is function this]) { |a, b| a.size <=> b.size }
bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
