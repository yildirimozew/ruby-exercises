dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  result = []
  end_result = Hash.new(0)
  list = str.downcase.split(" ")
  for i in list do
    result.append(append_chars(i))
  end
  result = result.flatten
  for i in result do
    if dict.include? i 
      end_result[i] += 1
    end
  end
  puts end_result
end

def append_chars(str)
  char = 0
  result = []
  length = str.length
  while char != length do
  result.append(find_ss(str, char, length))
  char += 1
  end
  return result
end

def find_ss(str, char, length)
  result = []
  for i in char..length - 1 
    result.append(str[char..i])
  end
  return result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)