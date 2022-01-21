module Swimmable
  def swim
    "I'm swimming"
  end
end

class Animal
end

class Fish < Animal
  # we can include multiple modules

  include Swimmable
end

dory = Fish.new
puts dory.swim

# namespacing: grouping classes under one module
module Language
  class Ruby
    def info
      'Ruby programming language'
    end
  end
end

ruby = Language::Ruby.new
puts ruby.info
