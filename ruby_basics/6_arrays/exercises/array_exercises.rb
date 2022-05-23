def nil_array(number)
  return Array.new(number)
end

def first_element(array)
  return array.first
end

def third_element(array)
  return array[2]
end

def last_three_elements(array)
  return array.last(3)
end

def add_element(array)
  return array.push(5)
end

def remove_last_element(array)
  # Step 1: remove the last element from the array
  array.pop
  # Step 2: return the array (because Step 1 returns the value of the element removed)
  return array
end

def remove_first_three_elements(array)
  # Step 1: remove the first three elements
array.shift(3)
  # Step 2: return the array (because Step 1 returns the values of the elements removed)
  return array
end

def array_concatenation(original, additional)
  return original.concat(additional)
end

def array_difference(original, comparison)
  return original - comparison
end

def empty_array?(array)
  return array.empty?
end

def reverse(array)
  return array.reverse
end

def array_length(array)
  return array.length
end

def include?(array, value)
  return array.include?(value)
end

def join(array, separator)
  array.join(separator)
end
