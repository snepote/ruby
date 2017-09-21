class Greeter
  @@salutation = 'hello'

  def initialize(name)
    @name = name
  end

  def greet
    puts "#{@@salutation}, #{@name}"
  end

  def self.perform
    new('world').greet
  end
end
Greeter.perform


module Counter
  def initialize
    @count = 0
  end

  def increment
    @count = count + 1
  end

  def count
    @count || 0
  end
end

class A
  extend Counter
end

puts A.count
A.increment
puts A.count