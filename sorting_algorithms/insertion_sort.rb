require 'pry'

def insertion_sort(array)
  n = array.length - 1
  sorted_array = []
  sorted_array[0] = array.shift
  array.each do |el|
    first_index = 0
    while first_index < sorted_array.length
      if sorted_array[first_index] >= el
        sorted_array.insert(first_index, el)
        break
      elsif first_index == sorted_array.length - 1
        sorted_array.insert(first_index + 1, el)
        break
      end
      first_index += 1
    end
  end
  sorted_array
end

# array = [3, 4, 2, 1]
array = [2, 3, 4, 5, 98, 34, 21, 22, 12, 10]
puts insertion_sort(array)