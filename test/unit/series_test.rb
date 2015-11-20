require_relative '../../klass/Series'
require 'test/unit'

class SeriesTest < Test::Unit::TestCase
  def test_fibonacci
    assert_equal [0, 1, 1, 2, 3, 5, 8, 13], Klass::Series.fibonacci(6)
  end
end