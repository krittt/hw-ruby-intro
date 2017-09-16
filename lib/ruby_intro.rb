# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  arr.max(2).inject(0, :+)
end

def sum_to_n?(arr, n)
  if arr.length <= 1
    return false
  end
  
target = 0 
i = 0
sum = n

  for i in arr do
    target = sum - i
    if arr.include?(target)
      return true
    else
      return false
    end
  end  

end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant?(s)
  
  if s == ""
    return false
  end
  
  s = s.downcase
  vowels = ['a','e','i','o','u']
  
  if s =~ /[[A-Za-z]]/
    
    if vowels.include?(s[0])
      return true
    else
      return false
    end
    return false
  end
  
  return false
end

def binary_multiple_of_4?(s)
  
  if s[-1,2] == "00"
    return true
  else
    return false
  end
  
  s.split("").each do |i|
    if i != '0' || i != '1'
      return false
    end
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError.new("ISBN Number is empty") if isbn == ""
    raise ArgumentError.new("Price is zero or less than zero") if price <= 0
  end 
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(str)
   @isbn = str
  end
 
  def price=(price)
   @price = price
  end
 
  def price_as_string(price)
   var = price.to_f
   flt = var.round(2)
   str = flt.to_s
   "$"+str
  end
    
end
