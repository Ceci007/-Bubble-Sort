def bubble_sort(list)
  sorted = false
  passes = 1
  until sorted == true
    sorted = true
    (0...list.length - passes).each do |i|
      next unless list[i] > list[i + 1]
      sorted = false
      temp = list[i]
      list[i] = list[i + 1]
      list[i + 1] = temp
    end
    passes += 1
  end
  list
end
p bubble_sort([78, 4, 3, 2, 2, 0])
