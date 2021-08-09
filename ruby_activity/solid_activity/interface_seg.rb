class Robot
    def initialize
      @no_of_arms = 2
    end
  
    def spin_around
      'I can spin around'
    end
  
    def rotate_arm
     puts "I am rotating my #{@no_of_arms} arms"
    end
end
  
  class PainterRobot < Robot
    def paint_house
      puts "Painting the house with my painting brush arm"
    end
  end
  
  class RadioRobot < Robot
    def initialize
      @no_of_antennas = 2
    end
  
    def search_for_stations
    puts "#{@no_of_antennas} antennas connecting to the closest radio station"
    end
  end
  
 radio_robot = RadioRobot.new
 radio_robot.search_for_stations
 painter_robot = PainterRobot.new
 painter_robot.paint_house
