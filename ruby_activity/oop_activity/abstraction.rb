# Abstraction

class PinoyFood
    def initialize (food_name,main_ingredient)
        @food_name = food_name 
        @main_ingredient = main_ingredient
    end

    def dish
        puts "This dish is #{@food_name} and the main ingredient of this is #{@main_ingredient}"
    end

    def dish_recipe
        puts recipe
    end

    private 

    def recipe
        "The recipe is a secret."
    end
end

filipino_dish = PinoyFood.new('Adobo','Pork or Chicken')
filipino_dish.dish
filipino_dish.dish_recipe