# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  s=0
  for i in arr
    s=s+i
  end
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length==0
    return 0
  elsif arr.length==1
    return arr[0]
  else
    m1=arr.sort[-1]
    m2=arr.sort[-2]
    return (m1+m2)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length==1
    return false
  end
  arr=arr.sort
  i=0
  j=arr.length-1
  while i<j
    if arr[i]+arr[j]<n
      i+=1
    elsif arr[i]+arr[j]>n
      j-=1
    elsif arr[i]+arr[j]==n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ("Hello, "+name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length==0
    return false
  else
    a1 =Array ('a'...'z')
    a2 =['a','e','i','o','u']
    a3=a1-a2
    if a3.include? s[0,1].downcase
      return true
    end
    return false
  end
    
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if !(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  if (s.to_i(2))%4==0
    return true
  end
  return false
end
# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn,:price
	def initialize(isbn,price)
		@isbn = isbn
		@price = price
		if @isbn.empty? or @price<= 0
			raise ArgumentError
		end
	end

	def price_as_string
		return "$"+"#{'%.2f' %  @price}"
	end
end