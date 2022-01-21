class Confection
  def prepare
    puts 'Baking at 350 degrees for 25 minutes.'
  end
end

class BananaCake < Confection
end

class Cupcake < Confection
  def prepare
    super
    puts 'Applying frosting.'
  end
end

banana_cake = BananaCake.new
cupcake = Cupcake.new

puts 'Banana Cake Preparation'
banana_cake.prepare

puts

puts 'Cupcake Preparation'
cupcake.prepare
