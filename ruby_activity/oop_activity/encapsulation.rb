# Encapsulation

class Employee

  def initialize(name, address, age, gender, position)       
     @name = name 
     @address = address
     @age = age
     @gender = gender 
     @position = position
  end
         

  def details() 
      puts "Employee name: #@name"
      puts "Employee address: #@address"
      puts "Employee age: #@age"
      puts "Employee gender: #@gender"
      puts "Employee position: #@position \n \n"
    end
end
        
employee1= Employee.new("Vincent Luague","Saog Marilao Bulacan",23,"Male","CEO")    
employee2 = Employee.new("Josephine Bracken","Lias Marilao Bulacan",21,"Female","President") 
employee3 = Employee.new("Jose Rizal","Lambakin Marilao Bulacan",32,"Male","Vice-President") 
    
employee1.details() 
employee2.details() 
employee3.details() 