module Towable
    def can_tow?(pounds)
      pounds < 2000
    end
  end

class MyCar < Vehicle 
    include NumberOfSeats
    NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
    include Towable
    NUMBER_OF_DOORS = 2
end

# lumina = MyCar.new(1997, 'chevy lumina', 'white')
# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.shut_down
# lumina.current_speed

# lumina.spray_paint ('black')
# limina.spray_paint = 'black'
# puts lumina.color
# puts lumina.year

# MyCar.gas_mileage(13, 351)  # => "27 miles per gallon of gas"
# puts lumina


class Vehicle
    attr_accessor :color
    attr_reader :year

    @@number_of_vehicles = 0

    def initialize (year, color, model)
        @year = year
        @color = color
        @model = model
        @current_speed = 0 
        @@number_of_vehicles += 0
    end

    def self.number_of_vehicles
        puts @@number_of_vehicles
    end

    def speed_up(number)
        @current_speed += number
        puts "You push the gas and accelerate #{number} mph."
    end
    
    def brake(number)
        @current_speed -= number
        puts "You push the brake and decelerate #{number} mph."
    end
    
    def current_speed
        puts "You are now going #{@current_speed} mph."
    end
    
    def shut_down
        @current_speed = 0
        puts "Let's park this bad boy!"
    end

    # def spray_paint (paint)
    #     @color = paint
    # end

    def spray_paint=(paint)
        @color = paint
    end

    def self.gas_mileage(gallons, miles)
        puts "#{miles / gallons} miles per gallon of gas"
    end

    def to_s
        puts "#{@year}, #{@color}, #{@model}"
    end

    def age
        puts "The age of this vehicle is #{years_old} years old"
    end

    private

    def years_old
        Time.now.year - @year  #or use self.year
    end

end

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

puts lumina.age


class Student
    def initialize (name, grade)
        @name = name
        @grade = grade
    end

    def better_grade_than?(other_person)
        self.grade > other_person.grade_getter
    end

    protected
    
    def grade_getter
        @grade
    end

end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)



# Create a Dog class that is initialized with a name.

class Dog
    def initialize (name)
        @name = name
    end

    def bark
        puts "Ruff ruff"
    end
end

bruno = Dog.new ("Bruno")
bruno.bark()

# Add an instance method to the Insect class to calculate the age_in_years.

class Insect
    def initialize(age_in_days)
      @age_in_days = age_in_days
    end

    def age_in_years
        @age_in_days/365
    end
  end

#   Create a Lamp class with a class method called about_me that returns the String "We brighten up people's lives".

class Lamp
    self.about_me ()
        returns "We brighten up people's lives"
    end
end

# Add a method to the WaterBottle class that returns the size of the WaterBottle and demonstrate how this method can be used.

class WaterBottle

    attr_reader :size

    def initialize(size)
      @size = size
      @age = 12
    end

    def age=(age)
      @age = age
    end

  end

tupperware = WaterBottle.new(14)

tupperware.size
tupperware.age = 16

person = Person.new()
person.say_something()
