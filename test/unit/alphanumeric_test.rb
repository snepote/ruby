require_relative '../../klass/alphanumeric.rb'
require 'test/unit'

class AlphanumericTest < Test::Unit::TestCase
  def setup
    @alphanumeric = Klass::Alphanumeric.new
  end

  def test_strip_non_alphanumeric
    assert_equal(' my string 123', @alphanumeric.to_alphanumeric('#$% my string 123'))
    assert_equal('my string', @alphanumeric.to_alphanumeric('my string()$%^$'))
  end
end