def bubble_sort(list)
	# init variables
	sorted = false
	passes = 1 # set to one to avoid out of bounds in array loop
	# loop until no swaps
	until sorted == true
			sorted = true
			# loop the list - the n passes already done as end of array is sorted
			(0...list.length - passes).each do |i|
					# test if left value is bigger than right
					if list[i] > list[i + 1]
							# swap values if out of order
							sorted = false
							temp = list[i]
							list[i] = list[i + 1]
							list[i + 1] = temp
					end
			end
			passes += 1
	end
	list
end
p bubble_sort([78,4,3,2,2,0])
    