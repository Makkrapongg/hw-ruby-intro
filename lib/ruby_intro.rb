# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0]if arr.length == 1
  return sum arr.sort {|i,j| j<=>i}.take(2)
end

def sum_to_n? arr, n
  return false if arr.lenght == 0 || arr.lenght == 1
  for i in 0...arr.lenght-1
    for j in i+1..arr.lenght
      return true if arr[i]+arr[j] == n
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  !(s =~ /^(?![aeiou])[a-z]/i).nil?
end

def binary_multiple_of_4? s
  !(s =~ /^(?:[01]*00|0)$/).nil?
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize (isbn,price)
    @isbn = isbn
    @price = price
    raise ArgumentError if isbn == '' || price <= 0
  end

  def price_as_string
    return "$%0.02f" %@price
  end
end
