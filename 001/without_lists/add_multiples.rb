class ArithmeticProgression
  def initialize(first_term, diference_between_consecutive_terms)
    @a1 = first_term
    @d = diference_between_consecutive_terms
  end

  def term(n)
    @a1 + (n - 1) * @d
  end

  def arithmetic_serie(n)
    (n * (@a1 + term(n))) / 2
  end
end

class AdderOfMultiples
  def initialize(limit)
    @limit = limit
  end

  def add_multiples_of(n)
    last_multiple = (@limit / n) + 1
    ap = ArithmeticProgression.new(0, n)
    ap.arithmetic_serie(last_multiple)
  end
end

def add_multiples_of_3_and_5_below(limit)
  raise TypeError unless limit.respond_to?(:integer?) and  limit.integer? and limit >= 0
  limit -= 1

  adder = AdderOfMultiples.new(limit)
  total = adder.add_multiples_of(3) + adder.add_multiples_of(5)
  total - adder.add_multiples_of(15)
end

puts "Answer: " + add_multiples_of_3_and_5_below(1000).to_s
