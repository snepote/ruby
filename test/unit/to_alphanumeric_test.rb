require_relative '../alphanumeric.rb'
require 'test/unit'

class ToAlphanumericTest < Test::Unit::TestCase
  def setup
    @alphanumeric = Alphanumeric.new
  end

  def test_strip_non_alphanumeric_standard_characters
    assert_equal(' my string 123', @alphanumeric.to_alphanumeric('#$% my string 123'))
    assert_equal('my string', @alphanumeric.to_alphanumeric('my string()$%^$'))
  end
end