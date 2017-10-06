def stock_picker(arr)
  profit = 0
  day1 = 0
  day2 = 0
  arr.each_with_index do |val1, pos1|
    arr.each_with_index do |val2, pos2|
      if (val2 - val1) > profit && pos2 > pos1
        profit = val2 - val1
        day1 = pos1
        day2 = pos2
      end
    end
  end
  [day1, day2]
end
