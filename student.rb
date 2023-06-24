require_relative 'person'

class Student < Person
  attr_accessor :classroom, :parent_permission
  def initialize(name, age, parent_permission: true, classroom: nil)
    super(name, age)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def classroom=(classroom)
    @classroom = classroom
    @classroom.students << self unless @classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
