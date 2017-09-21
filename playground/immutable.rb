str = 'shall-this-string-change'.freeze
begin
  str << 'An attempt to modify.'
rescue => err
  puts "#{err.class} #{err}"
end
# The output is - TypeError can't modify frozen string
