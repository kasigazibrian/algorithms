require 'pry'

def bubble_sort(array)

  n = array.length - 1

  loop do
    swap = false
    array.each_with_index do |_value, index|
      next if (index + 1) > n
      next unless array[index] > array[index + 1]
      save = array[index]
      array[index] = array[index + 1]
      array[index + 1] = save
      swap = true
    end
    break unless swap
  end
  array
end

array = [7, 8, 9, 3,34,56,78,90,34,56,23,45,44,55,88]
puts bubble_sort(array)