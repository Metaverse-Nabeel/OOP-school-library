require_relative 'nameable'

class Person < Nameable
  attr_accessor :age, :name
  attr_reader :id

  def initialize(age, parent_permission: true, name: 'unknown')
    super(name)
    @id = Random.rand(1..1000)
    @age = age
    @parent_permission = parent_permission
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
end
