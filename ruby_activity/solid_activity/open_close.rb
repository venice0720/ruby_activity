class Animal
  def initialize(species)
    @species = species
  end
end

class Carnivore < Animal
  def land
    puts "#{@species} is a carnivore animal which lives in land."
  end
end
class Herbivore < Animal
  def land
    puts "#{@species} is a herbivore animal which lives in land."
  end
end
class Omnivore < Animal
    def land
      puts "#{@species} is an omnivore animal which lives in land."
    end
end

carni_animals = Carnivore.new("Tiger")
carni_animals.land
herbi_animals = Herbivore.new("Elephant")
herbi_animals.land
omni_animals = Omnivore.new("Gorilla")
omni_animals.land