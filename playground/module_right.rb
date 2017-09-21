module Counter
  def initialize
    @count = 0
  end

  def increment
    @count = count + 1
  end

  def count
    @count ||= 0
  end
end

# Then, since we want to add class-level methods to our target classes, 
# we use extend instead of include to enhance Tweedledee and Tweedledum with the newly extracted module.
class A
  extend Counter
end

puts A.count
A.increment
puts A.count