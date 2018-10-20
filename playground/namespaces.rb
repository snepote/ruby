# https://blog.jetbrains.com/ruby/2017/03/why-you-should-not-use-a-class-as-a-namespace-in-rails-applications/

class ParentClass
  class SomeClass
    def initialize
      puts "My name is #{self.class}"
    end
  end
end

obj = ParentClass::SomeClass.new

module ParentModule
  class ChildClass
    def initialize
      puts "My name is #{self.class}"
    end
  end
end

ParentModule::ChildClass.new

class SomeModule::TheClass
  def initialize
    puts "My name is #{self.class}"
  end
end

SomeModule::TheClass.new
# namespaces.rb:21:in `<main>': uninitialized constant SomeModule (NameError)

# This will result in a NameError in Ruby, but it will work on Rails since Rails will automatically
# define the module SomeModule if it's not declared already
