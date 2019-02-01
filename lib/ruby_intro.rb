# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each {|x| total += x}
  return total
end

def max_2_sum arr
  if arr.length == 0
  	return 0
  elsif arr.length == 1
  	return arr[0]
  else
  	arr.sort!
  	return arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  hash = Hash.new
  arr.each do |x|
  	if hash.key?(x)
  		return true
  	end
  	hash[n-x] = x
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + "#{name}"
end

def starts_with_consonant? s
  return s[0] =~ /^[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]/
  	return s.to_i(2) % 4 == 0
  end
  return false
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price

	def initialize(isbn, price)
		if isbn.empty?() || price <= 0
			raise ArgumentError.new()
		end
		@isbn = isbn
		@price = price
	end

	def price_as_string
		return format("$%.2f", @price)
	end

end
