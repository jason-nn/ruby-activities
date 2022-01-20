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
end

jason = Student.new('Jason', 20, 'Full Stack Web Development', 'Avion School')
jason.intro
