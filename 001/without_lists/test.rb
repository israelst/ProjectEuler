require 'test/unit'
require './add_multiples'

class TestAddMultplesOf3And5Below < Test::Unit::TestCase
  def assert_sum_of_multiples(expected, limit)
    assert_equal expected, add_multiples_of_3_and_5_below(limit)
  end
  def assert_raise_TypeError(invalid_limit)
    assert_raise(TypeError){
      add_multiples_of_3_and_5_below(invalid_limit)
    }
  end

  def test_non_integer
    assert_raise_TypeError "invalid term"
    assert_raise_TypeError nil
  end
  def test_negative
    assert_raise_TypeError -42
  end
  def test_non_integer
    assert_raise_TypeError 4.2
  end
  def test_0
    assert_sum_of_multiples 0, 0
  end
  def test_2
    assert_sum_of_multiples 0, 2
  end
  def test_3
    assert_sum_of_multiples 0, 3
  end
  def test_4
    assert_sum_of_multiples 3, 4
  end
  def test_5
    assert_sum_of_multiples 3, 5
  end
  def test_6
    assert_sum_of_multiples 8, 6
  end
  def test_10
    assert_sum_of_multiples 23, 10
  end
  def test_16
    assert_sum_of_multiples 60, 16
  end
end

class TestArithmeticProgression < Test::Unit::TestCase
  def test_term_1
    ap = ArithmeticProgression.new(1, 1)
    assert_equal ap.term(5), 5
  end
  def test_arithmetic_serie
    ap = ArithmeticProgression.new(1, 1)
    assert_equal ap.arithmetic_serie(3), 6
  end
end
