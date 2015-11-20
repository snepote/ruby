require_relative '../../klass/movie.rb'
require 'test/unit'

class MovieTest < Test::Unit::TestCase
  def setup
    @movie = Klass::Movie.new(1)
  end

  def test_title
    assert_equal('SELECT title FROM movies WHERE id = 1', @movie.title)
  end
end