def bubble_sort(list)
  list = bubble_sort_by(list) do |left, right|
    left < right
  end
  list
end

def bubble_sort_by(list)
  sorted = false
  passes = 1
  until sorted == true
    sorted = true
    (0...list.length - passes).each do |i|
      block_results = yield(list[i], list[i + 1])

      block_results = block_results >= 1 if block_results.is_a? Integer

      next unless block_results

      sorted = false
      temp = list[i]
      list[i] = list[i + 1]
      list[i + 1] = temp
    end
    passes += 1
  end
  list
end
