require_relative '../../klass/calc.rb'
require 'test/unit'

class CalcTest < Test::Unit::TestCase
  def setup
    @calc = Calc.new
  end

  def test_sum_numbers
    assert_equal(5, @calc.sum(2, 3))
    assert_equal(17, @calc.sum(10, 7))
    assert_equal(2, @calc.sum(-1, 3))
    assert_equal(8.5, @calc.sum(5.5, 3))
  end

  def test_multiply
    assert_equal(6, @calc.multiply(2, 3))
    assert_equal(-3, @calc.multiply(-1, 3))
    assert_equal(0, @calc.multiply(0, 3))
  end
end