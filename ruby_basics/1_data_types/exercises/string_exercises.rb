def concatenate_example(string)
  return "Classic " << string
end

def concatenate(string)
  return "Hello " << string << "!"
  # use concatenation to format the result to be "Hello <string>!"
end

def substrings(word)
  return word[0, 4]
end

def capitalize(word)
  temp = word.capitalize
  return temp
end

def uppercase(string)
  return string.upcase
end

def downcase(string)
  return string.downcase
end

def empty_string(string)
 return string.empty?
end

def string_length(string)
  return string.length
end

def reverse(string)
  return string.reverse
end

def space_remover(string)
  return string.gsub(" ", "")
end
