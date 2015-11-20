def fibonacci(numbers = 0)
  sequence = [0, 1]
  numbers.times do |i|
    puts sequence[i + 1]
    sequence << sequence[i] + sequence[i + 1]
  end
end

# Example
fibonacci(6)