
i      = 5
NUMBER = 10
WAIT   = 2
begin
  while i >= -5
    puts "#{NUMBER} / #{i} = #{NUMBER / i}"
    i -= 1
  end
rescue => e
  puts e
  if i == 0
    puts "skipping #{i}"
    i -= 1
  end
  puts "error, waiting #{WAIT} to retry"
  sleep WAIT
  retry
end
