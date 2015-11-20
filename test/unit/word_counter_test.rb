require 'test/unit'

class WordCounterTest < Test::Unit::TestCase

  def test_count_greater_than_2_letter_words
    assert_equal(2, count_words(' ab abc abcd #$^#%'))
    assert_equal(0, count_words(' '))
    assert_equal(1, count_words('2304983'))
  end

  private
  def count_words(str)
    str.gsub(/\w{3,}/).count
  end
end