price_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def day_trader(price_array)
	max = 0
	result = []
	for i in 0...price_array.length
		for j in i...price_array.length
			if (price_array[j] - price_array[i]) > max 
				max = (price_array[j] - price_array[i])
				ja = i
				jv = j
			end
		end
	end

	result << ja
	result << jv

	return result.inspect
end
