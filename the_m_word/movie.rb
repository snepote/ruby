require_relative 'entity'

class Movie < Entity
  def initialize(ident)
    super 'movies', ident
  end

  def title
    get 'title'
  end

  def title=(value)
    set('title', value)
  end
end