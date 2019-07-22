def selection_sort(array)
  n = array.length - 1
  (0..n).each do |index|
    ((index + 1)..n).each do |j|
      next unless array[j] < array[index]
      save = array[j]
      array[j] = array[index]
      array[index] = save
    end
  end
  array
end

array = [3, 4, 5, 2, 9, 5]

puts selection_sort(array)