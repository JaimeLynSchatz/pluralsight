# currying or partial application (Haskell Curry)

mult = -> x, y { x * y }
mult[2, 3]
double = mult.curry[2]
double[3]
double[100]
# call double with the second parameter

class Promotion
  def initialize(description, calculator)
    @description = description
    @calculator = calculator
  end

  def appply(total)
    total - @calculator[total]
  end
end

discount = Promotion.new(
  "15% off everything",
  -> total { total * 0.15 }
) 

calc = -> threshold, discount, total do
  total > threshold ? total * discount : 0
end

ten_pc_calc = calc.curry[50, 0.1]
fifteen_pc_calc[45]
mult = -> x, y { x * y }
mult[2, 3]
double = mult.curry[2]
