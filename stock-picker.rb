def stock_picker(list)
  last_profit = 0
  day1 = 0
  day2 = 0
  list.each_with_index do |i, index|
    for k in index + 1..list.length - 1 do
      profit = list[k] - i
      if profit > last_profit 
        last_profit = profit
        day1 = index
        day2 = k
      end
    end
  end
  p [day1, day2]
end

stock_picker([0,3,6,9,5,8,6,1,10])