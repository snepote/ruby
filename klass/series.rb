module Klass
  class Series
    def self.fibonacci(numbers = 0)
      sequence = [0, 1]
      numbers.times do |i|
        sequence[i + 1]
        sequence << sequence[i] + sequence[i + 1]
      end
      sequence
    end
  end
end
