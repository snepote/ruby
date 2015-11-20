require 'test/unit'
require 'date_core'

class DateIntervalTest < Test::Unit::TestCase
  def test_day_diff
    assert_equal(5, days_diff(Date.new(2015, 11, 10), Date.new(2015, 11, 15)))
    assert_equal(2, days_diff(Date.new(2014, 12, 31), Date.new(2015, 01, 02)))
  end

  def test_hours_diff
    # assert_equal(0, hours_diff(DateTime.new(2015, 11, 16), DateTime.new(2015, 11, 16)))
    assert_equal(0, hours_diff(DateTime.new(2015, 11, 16, 10, 00, 00), DateTime.new(2015, 11, 16, 10, 01, 00)))
    assert_equal(24, hours_diff(DateTime.new(2015, 11, 16, 10, 00, 00), DateTime.new(2015, 11, 17, 10, 00, 00)))
  end

  private

  def days_diff(first_date, second_date)
    (first_date - second_date).abs
  end

  def hours_diff(first_time, second_time)
    ((first_time - second_time) / 3600).round
  end
end