def add(numbers)
  return 0 if numbers.empty?
    
	if numbers.start_with?("//")
		delimiter, numbers = numbers.split("\n", 2)
		delimiter = delimiter[2..-1]
		numbers = numbers.split(delimiter).map(&:to_i)
	else
		numbers = numbers.split(/[\n,]/).map(&:to_i)
	end
	
	negatives = numbers.select { |num| num < 0 }
	if negatives.any?
		raise "negative numbers not allowed #{negatives.join(',')}"  # No space after the comma
	end
	
	numbers.sum
end
