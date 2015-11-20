require_relative '../movie.rb'
require 'test/unit'

class TestMovie < Test::Unit::TestCase
  def setup
    @movie = Movie.new(1)
  end

  def test_title
    assert_equal('SELECT title FROM movies WHERE id = 1', @movie.title)
  end
end