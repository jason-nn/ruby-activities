class Student
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
