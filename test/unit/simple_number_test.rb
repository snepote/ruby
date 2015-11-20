require_relative '../../klass/simple_number'
require 'test/unit'
 
class SimpleNumberTest < Test::Unit::TestCase
 
  def test_simple
    assert_equal(4, Klass::SimpleNumber.new(2).add(2) )
    assert_equal(6, Klass::SimpleNumber.new(2).multiply(3) )
  end
 
end