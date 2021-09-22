def caesar_cipher(str, factor)
  bytes = str.bytes
  up_or_down = up_or_down(bytes)
  bytes_adjusted = bytes.each_with_index.map{|num, i|
    if up_or_down[i] == "u"
      num = num + factor
      while num > 90 do
       num = num - 26
      end
      while num < 65 do
        num = num + 26
      end
    elsif up_or_down[i] == "d"
      num = num + factor
      while num > 122 do 
       num = num - 26
      end
      while num < 97 do
       num = num + 26
      end
    end
    num.chr}
    return bytes_adjusted.join
end



def up_or_down(str)
  up_or_down = str.map{|num| if num < 65 || num > 122 || (num > 90 && num < 97)
    "s"
  elsif num < 91
    "u"
  else
    "d"
  end}
  return up_or_down
end

str = gets.chomp
factor = gets.chomp.to_i
puts caesar_cipher(str, factor)
