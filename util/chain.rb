class Person
  attr_reader :name, :age

  def name(value)
    @name = value
    self
  end

  def age=(value)
    @age = value
    self
  end

  def books
    ['Cien años de soledad', 'El coronel no tiene quien le escriba']
  end

  def filter_by(items, name:)
    puts items
    puts name
    items
  end
end

one_person = Person.new.name('Sebastian')
one_person.age = 40

one_person.books.filter_by(name: 'Cien años de soledad')
