class Student
  # attr_reader :name, :age, :course, :school
  # attr_writer :name

  attr_accessor :name

  def initialize(name, age, course, school)
    @name = name
    @age = age
    @course = course
    @school = school
  end

  def intro
    puts "Hi! My name is #{@name}. I'm #{@age} years old and am currently taking #{@course} at #{@school}."
  end

  def self.intro
    puts "Hi! I'm a student."
  end

  # def name=(name)
  #   @name = name
  # end

  class << self
    def hi
      puts 'Hi!'
    end
  end
end

jason = Student.new('Jason', 20, 'Full Stack Web Development', 'Avion School')
jason.intro

Student.intro
Student.hi

# puts jason.name
# puts jason.age
# puts jason.course
# puts jason.school

jason.name = 'Jason Ho'

puts jason.name
