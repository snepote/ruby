s = "foobar"
puts "s.class = #{s.class}"
puts "s.class.superclass = #{s.class.superclass}"
puts "s.class.superclass.superclass = #{s.class.superclass.superclass}"
puts "s.class.superclass.superclass.superclass = nil"

class Word
    def palindrome?(string)
        string == string.reverse
    end
end

w = Word.new
%w[sebes lelele].each do |word|
  puts "\"#{word}\" is a palindrome? #{w.palindrome?(word)}"
end

class Word
  def initialize(str)
    print "word \"#{str}\""
    @w = str
  end

  def palindrome?
    @w == @w.reverse
  end
end

w = Word.new("sebes")
puts " is a palindrome? #{w.palindrome?}"

class OtherWord < String
  def palindrome?
    self == self.reverse
  end
end

class OtherWord < String
  def palindrome?
    self == reverse
  end
end

str = "level"
w = OtherWord.new str
puts "word \"#{str}\" is a palindrome? #{w.palindrome?}"

# attr_accessor :name is the short way of
class UserSuperShort
  attr_reader :name
  attr_writer :name
end

# which is also equivalent to
class Person
  def name
    @name
  end

  def name=(str)
    @name = str
  end
end

class User
  attr_accessor :name, :email
  
  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end
  
  def formatted_email
    "#{@name} <#{@email}>"
  end
  
end
