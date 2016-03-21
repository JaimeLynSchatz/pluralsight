# composition.rb
# let's drop the word function there

requrie './products'

red = -> products { products.select { |p| p.color == :red } }

class RedFilter
  def apply(products)
    products.select { |p| p.color == :red }
  end
end

class ColorFilter
  def initialize(color)
    @color = color
  end

  def apply(products)
    products.select { |p| p.color == @color }
  end
end

filter = ColorFilter.new(:blue)
filter.apply(PRODUCTS).take(3)

# provide the computer a definition of "filter by color",
# not just a list of steps to obtain the result

# teaching values rather than rules

