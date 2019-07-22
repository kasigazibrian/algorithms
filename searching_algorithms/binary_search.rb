
def binary_search(array, value)

  last_index = array.length - 1
  first_index = 0

  while first_index <= last_index
    mid_index = first_index + ((last_index - first_index) / 2)
    if array[mid_index] == value
      return "The value is at index #{mid_index}"
    elsif array[mid_index] < value
      first_index = mid_index + 1
    else
      last_index = mid_index - 1
    end
  end
  'value not found in the array'
end

array = [1, 2, 3, 7, 8, 9]
puts binary_search(array, 9)