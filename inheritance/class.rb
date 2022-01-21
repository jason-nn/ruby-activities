class Animal
  def sit
    'Sit'
  end

  def speak
    'Hello!'
  end
end

class Dog < Animal
  def speak
    super + ' I am a dog!'
  end
end

boni = Dog.new
puts boni.sit
puts boni.speak
