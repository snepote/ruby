1.upto(100) do |number|
  (number % 3 == 0) ? output = 'Fizz' : output = ''
  output += 'Buzz' if number % 5 == 0
  output = number if output.empty?
  puts "#{number} = #{output}"
end
