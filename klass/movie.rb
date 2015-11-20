require_relative 'Entity'

module Klass
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
end