class Animal
    def walk
       "do_some_walkin"
    end
  
    def run
      raise "It should be a sub class"
    end
end
  
  class Cat < Animal
    def run
      "run_like_a_cat"
    end
  end
  