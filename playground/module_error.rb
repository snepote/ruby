# ATTENTION
# This will result in an error, because in Ruby there's no warranty that the classes that extends
# a module will call the initialize method

module Counter
  def initialize
    @count = 0
  end

  def increment
    @count += 1
  end

  def count
    @count
  end
end

class A
  extend Counter
  # by using extend we add the module functionality 
  # to the class level rather than to the instance level
end
puts A.count
A.increment