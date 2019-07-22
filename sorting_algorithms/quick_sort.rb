require 'pry'

def quick_sort(array)
  return array if array.length <= 1
  pivot = array.delete_at(rand(array.length))

  left = Array.new
  right = Array.new

  array.each do |x|
    if x <= pivot
      left << x
    else
      right << x
    end
  end

  [*quick_sort(left), pivot, *quick_sort(right)]

end

a =  [1, 4, 5, 89, 90, 98, 54, 32, 43, 67, 87, 21]
p quick_sort(a)