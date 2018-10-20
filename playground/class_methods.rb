
class Static
  puts "[#{self}] class"
  @@counter = 0

  def self.counter=(number)
    @@counter = number
  end

  def self.counter
    @@counter
  end
end

obj_one = Static
obj_two = Static

puts "obj_one.counter is: #{obj_one.counter}"
puts "obj_two.counter is: #{obj_two.counter}"
puts "increment counter of obj_one"
obj_one.counter += 1
puts "makes obj_two.counter to be: #{obj_two.counter}"

puts ""
class Simpler
  puts "[#{self}] class"
  @counter = 0
  class <<self
    attr_accessor :counter
  end
end
one = Simpler
two = Simpler

puts "one.counter is: #{one.counter}"
puts "two.counter is: #{two.counter}"
puts "increment counter by two"
one.counter += 2
puts "makes two.counter to be: #{two.counter}"

puts ""
class Other
  puts "[#{self}] class"
  @@class_variable = 0

  def instance_method_write=(value)
    @@class_variable = value
  end

  def instance_method_read
    @@class_variable
  end
end

some_object = Other.new
puts "some_object.instance_method_read is: #{some_object.instance_method_read}"
puts "some_object.instance_method_write 1"
some_object.instance_method_write = 1
puts "some_object.instance_method_read is: #{some_object.instance_method_read}"
