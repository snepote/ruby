# self depends pretty much on the context
# top-level context: not executing inside any class
puts "self on a top-level context is: #{self}"

# on a top-level context, everything is executed inside the object "main"
puts "self.class on a top-level context is: #{self.class}"

# Class definition self
# In this context, self refers to the parent class in which is defined
# For example: given a class Author
class Author
  puts "In the context of a class 'Author' definition self is: #{self}"
end

# Module defintion self
module Library
  puts "self inside Library module is: #{self}"

  class Author
    puts "self inside Author class inside Library module is: #{self}"
  end
end

# Class method self
class Author
  # define class variable
  @@name = 'John Doe'

  # getter method
  def self.name
    "self inside a class method 'name' of the class 'Author' is #{self}"
    @@name
  end
end
puts "Author class method 'name' is: #{Author.name}"

# Class instance method self
class Author

  # instance method
  def name
    puts "self inside a class instance method is: #{self}"
    puts "self.class inside a class instance method is: #{self.class}"
    "John Doe"
  end
end

# define instance
author = Author.new
puts "Author class instance method 'name' is: #{author.name}"

# Class Singleton method self

class SingletonAuthor
end

# define instance
singleton_author = SingletonAuthor.new

# define Singleton method
def singleton_author.name
  puts "self inside a class Singleton method is: #{self}"
  puts "self.class inside a class Singleton method is: #{self.class}"
  return "John Doe"
end
puts "SingletonAuthor class Singleton method 'name' is: #{singleton_author.name}"

# define another instance without Singleton method 'name'
new_singleton_author = SingletonAuthor.new
puts "new class method 'name' should be undefined #{new_singleton_author.name}"


# SEE: https://airbrake.io/blog/ruby/self-ruby-overview
