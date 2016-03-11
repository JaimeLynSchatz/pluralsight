# ruby_functions.rb

# Functional programming rocks -- but does take some acclimation
# A fucntion is a relation between a set of of input values and a set of corresponding output values
#
# This means that Ruby is well-suited to funcitonal programming -- even objects are essentially sending messages (outputs)
# back and forth so objects can be used as Functions (in the strict mathematical sense)

def max(x, y)
  if x > y
    x
  else
    y
  end
end

def better_max x, y
  x > y ? x : y
end

def first_even(list)
  # imperative
  for i in list
    if i.even?
      break iend
    end
  end
end

def better_first_even(list)
  return nil if list.empty?
  i = list.shift
  if e.even?
    i
  else
    better_first_even(list)
  end
end

even(x) = x % 2
first([1, 2, 3], even)
# first can check if the first element is anything, based on the secondary function passed in

discount = Proc.new do |price|
  price - (price * 0.15)
end

bad_code = Proc.new do
  raise "oh, noes, bad code!"
end

discount.call(100)

prices.map(&tax)

# Blocks - you can use an anonymous code block within the map function
prices = [100, 75, 80, 90, 50]
prices.map do |price|
  price + (price * 0.2)
end

def called_with_block?
  if block_given?
    puts "you called me with a block"
  end
end

called_with_block?

def print_and_yield
  puts "before calling yield"
  yield
  ptus "after calling yield"
end

prices = [10, 100, 40, 75, 30]
prices.select do |price|
  price < 50
end

prices.select(&:even?)
# is the same as
prices.select { |price| :even?.to_proc.call(price)}

prices.map(&:to_f)
