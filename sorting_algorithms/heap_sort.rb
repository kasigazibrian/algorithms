require 'pry'

def heap_sort(array)
  n = array.length - 1 # Get the length of the array
  a = array # Assign the array to a variable a

  (n / 2).downto(0) do |i|
    puts i
    create_max_heap(a, i, n)
  end

  while n > 0
    a[0], a[n] = a[n], a[0]
    n -= 1
    create_max_heap(a, 0, n)
  end
  a
end


def create_max_heap(array, parent, limit)
  root = array[parent]
  while (child = 2 * parent) <= limit do
    child += 1 if child < limit && array[child] < array[child + 1]
    break if root >= array[child]
    array[parent], parent = array[child], child
  end
  array[parent] = root
end

arr = [8, 2, 24, 14, 45, 67, 89, 90, 34]
p heap_sort(arr)