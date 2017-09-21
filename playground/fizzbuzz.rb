(1..100).each do |num|
	talk = ''
	if (num % 3 == 0) then talk = 'Fizz' end
	if (num % 5 == 0) then talk = talk + 'Buzz' end
	puts "#{num.to_s}: #{talk}" unless talk.empty?
end
