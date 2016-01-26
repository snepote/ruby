require 'delegate'
require 'date'

class Person
    def born_on
        Date.new(1977, 12, 18)
    end
end

class PersonDecorator < SimpleDelegator
    def birth_year
        born_on.year
    end
end

decorated_person = PersonDecorator.new(Person.new)
puts decorated_person.birth_year  #=> 1989
puts decorated_person.__getobj__  #=> #<User: ...>