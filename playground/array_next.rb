arr = %w[one two three]

def next_element(array, element)
  current = array.find_index(element)
  if current == (array.size - 1) then
    array.first
  else
    array.drop(current + 1).cycle.next
  end
end

element = 'two'
array = arr
puts next_element(array, element)
