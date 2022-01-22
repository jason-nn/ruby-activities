class Student
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

jason = Student.new('Jason', 'Ho')
puts jason.full_name
