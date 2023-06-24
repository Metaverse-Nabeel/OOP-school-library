require_relative 'nameable'

class Person < Nameable
  attr_accessor :age, :name, :rentals, :parent_permission
  attr_reader :id

  def initialize(name, age, parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    rentals << rental unless rentals.include?(rental)
    puts "Rental added to person: Person ID: #{id}, Rental Date: #{rental.date}, Book Title: #{rental.book.title}"
  end
end
