module Klass
  class Alphanumeric
    def to_alphanumeric(str)
      str.gsub(/[^\w\s]/, '')
    end
  end
end
