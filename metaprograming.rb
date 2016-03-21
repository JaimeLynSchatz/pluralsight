# metaprograming.rb

class Dinaosaur
  def self.add_method(method_name)
    define_method(method_name) do
      "this method was dynamically defined"
    end
  end
end

d = Dinosaur.new
Dinosaur.add_method(:roar)
d.road # => "this method was dynamically defined"
