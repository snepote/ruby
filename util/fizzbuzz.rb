def fizzbuzz(number)
  output = ''
  output = 'Fizz' if number % 3 == 0
  output += 'Buzz' if number % 5 == 0
  output = number if output.empty?
  "#{number} = #{output}"
end
(1..100).map{ |number| puts fizzbuzz number }
