class Person
  CLASS_ATTRIBUTE = 'class attribute content'.freeze

  attr_accessor :name
  def initialize(name:)
    @name = name
  end
end

seb = Person.new(name: 'Sebastian')

puts "seb = #{seb.name}"
# puts "seb.singleton_class.CLASS_ATTRIBUTE = #{seb.singleton_class.CLASS_ATTRIBUTE}"
puts "seb.class::CLASS_ATTRIBUTE = #{seb.class::CLASS_ATTRIBUTE}"
puts "seb.singleton_class::CLASS_ATTRIBUTE = #{seb.singleton_class::CLASS_ATTRIBUTE}"
