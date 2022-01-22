# ----- Inheritance ----- #

class Person
  def initialize(birthday)
    @birthday = birthday
  end

  def age
    if month < current_month
      return current_year - year
    elsif month == current_month
      if day <= current_day
        return current_year - year
      else
        return current_year - year - 1
      end
    else
      return current_year - year - 1
    end
  end

  def chinese_zodiac
    return zodiacs[year % 12]
  end

  private

  def month
    @birthday.split('/')[0].to_i
  end

  def day
    @birthday.split('/')[1].to_i
  end

  def year
    @birthday.split('/')[2].to_i
  end

  def current_month
    Time.new.month
  end

  def current_day
    Time.new.day
  end

  def current_year
    Time.new.year
  end

  def zodiacs
    %w[monkey rooster dog pig rat ox tiger rabbit dragon snake horse goat]
  end
end

class OldPerson < Person
  def age
    return 50
  end
end

class VeryOldPerson < Person
  def age
    return 100
  end
end

jason = Person.new('07/26/2001')
puts jason.age

jason = OldPerson.new('07/26/2001')
puts jason.age

jason = VeryOldPerson.new('07/26/2001')
puts jason.age

# ----- Duck-typing ----- #

class Duck
  def walks
    'walks like a duck'
  end

  def swims
    'swims like a duck'
  end

  def quacks
    'quacks like a duck'
  end
end

class Bird
  def walks
    'walks like a duck'
  end

  def swims
    'swims like a duck'
  end

  def quacks
    'quacks like a duck'
  end
end

ducks = [Duck.new, Bird.new]

ducks.each do |duck|
  puts
  puts duck.walks
  puts duck.swims
  puts duck.quacks
end
