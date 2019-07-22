def linear_search(array, value)
  array.each_with_index do |val, index|
    if value == val
      return "The value is at index #{index}"
    end
  end
end