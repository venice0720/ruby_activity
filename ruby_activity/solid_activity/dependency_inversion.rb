class Robot
    def initialize
      @no_of_arms = 2
    end
  
    def spin_around
     puts "I can spin around"
    end
  
    def rotate_arm
     puts "I am rotating my #{@no_of_arms} arms"
    end
end
  
  class PainterRobot < Robot
    def initialize(tool)
      @tool = tool
    end
  
    def paint_house
     puts "Painting the house with my #{@tool} arm"
    end
  end
  
  painter_robot = PainterRobot.new('painting brush')
  painter_robot.paint_house
  painter_robot = PainterRobot.new('paint sprayer')
  painter_robot.paint_house
  painter_robot = PainterRobot.new('paint roller')
  painter_robot.paint_house

