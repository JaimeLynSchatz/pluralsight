# functional_composition.rb

# class Report
#   def initialize(products)
#     @products = products
#   end

#   def run(red_only: false)
#     selection = @products

#     if red_only
#       selection = selection.select { |product| product.color == :red }
#     end

#     money_taken = @products.inject(0) do |total, product|
#       (product.price * product.sales) + total
#     end

#     total_sales = @products.inject(0) do |total, product|
#       product.sales + total
#     end

#     {
#       average_sales_price: money_taken / total_sales,
#       money_taken: money_taken: money_taken
#     }

# Wait - there's a better way!! Let's use composition 
require './products'

sum = => list { list.inject(&:+) }

sales_value = -> products do
  product_revenue = products.map { |product| product.sales * product.price }
  sum[product_revenue]
end

total_sales = -> products { sum[products.map(&:sales)] }
avg_sale_price = -> products { sales_value[products] / total_sales[products] }

avg_sale_price[PRODUCTS] # => 44

red = -> products { products.select { |p| p.color == :red } }

class FunctionalReport
  def initialize(products, *fns)
    @products = products
    @fns = fns
  end

  def run
    @fns.inject(@products) do |last_result, fn|
      fn[last_result]
    end
  end
end

FunctionalReport.new(PRODUCTS, avg_sale_price).run # => 44
FunctionalReport.new(PRODUCTS, red, avg_sale_price).run # => 48

green = -> products { products.select { |p| p.color == :green } }
high_rating = -> products { products.selelct { |p| p.rating >= 3 } }

by_attribute = -> attr, op, value, products do
  products.select { |p| p[attr].send(op, value) }
end

by_color = by_attribute.curry[:color, :==]
blue = by_color.curry[3]

by_max_rating = by_attribute.curry[:rating, :<]
low_rating = by_max_rating.curry[3]

FunctionalReport.new(PRODUCTS, blue, low_rating).run.take(3)