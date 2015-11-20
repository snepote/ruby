def squares_seq(min = 1, max = 1)
    puts (min..max).map { |i| i**2 }.join(', ')
end

# example
puts 'squares_seq(1, 5)'
squares_seq(1, 5)

puts "%w[a, b, c] returns an array of letters #{%w[a, b, c]}"

puts "%w[a, b, c].to_s.upcase returns #{%w[a, b, c].to_s.upcase}"
puts "%w[a, b, c].map { |char| char.upcase}.join returns #{%w[a, b, c].map { |char| char.upcase}.join}"
puts "%w[a, b, c].map(&:upcase).join(\" \") returns #{%w[a, b, c].map(&:upcase).join(' ')}"

# Hash
puts '// Hash'

user = { :first_name => 'Sebastian', :last_name => 'Nepote' }
puts 'user = { :first_name => "Sebastian", :last_name => "Nepote" } returns ' + user.to_s
puts '/ Another notation (not a symbol, but it will be converted to a symbol)'
user = { first_name: 'Sebastian', last_name: 'Nepote' }
puts 'user = { first_name: "Sebastian", last_name: "Nepote" } returns ' + user.to_s

params = {}
params[:user] = { name: 'Sebastian Nepote', email: 'snepote@gmail.con' }
puts 'params = {}'
puts 'params[:user] = { name: "Sebastian Nepote", email: "snepote@gmail.con" } returns ' + params.to_s
puts "params[:user][:name] returns #{params[:user][:name]}"

flash = { success: 'It worked!', danger: 'It failed.' }
puts "flash = #{flash}"
puts "flash.each { |key, value| puts \"#{key.inspect} => #{value}\" }"
flash.each { |key, value| puts "#{key.inspect} => #{value}" }
puts "p flash.keys returns #{p flash.keys} which is an array with the symbols"
puts "while push flash.keys returns #{puts flash.keys} which is the symbols represented as strings"