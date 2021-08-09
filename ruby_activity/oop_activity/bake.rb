class Confection
  def initialize(name)
    @name = name
  end

  def prepare
    puts @name
    puts "Baking at 350 degrees for 25 minutes."
  end
end

class Cupcake < Confection
  def prepare
    super
    puts "Applying frosting"
  end
end

class BananaCake < Confection
end

cupcake = Cupcake.new("Cupcake")
cupcake.prepare

banana_cake = BananaCake.new("Banana Cake")
banana_cake.prepare