class MyCar
    attr_accessor :speed
    attr_accessor :color
    attr_reader   :year
    @@count = 0
    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
        @@count +=1
    end

    def speedUp(mph)
        self.speed += mph
    end

    def brake(mph)
        self.speed -= mph
    end

    def shutCarOff()
        self.speed = 0
    end

    def spray_paint(new_color)
        self.color = new_color
    end
    
    def get_total_count()
        return @@count
    end

    def self.get_count()
        return @@count
    end
end

emil_car = MyCar.new(2019, "Grey", "Subaru Legacy")
puts(emil_car.speed)
emil_car.speedUp(10)
puts(emil_car.speed)
emil_car.brake(5)
puts(emil_car.speed)
emil_car.shutCarOff()
puts(emil_car.speed)
puts(emil_car.year)
puts(emil_car.color)
emil_car.color = "green"
puts(emil_car.color)
emil_car.spray_paint("Yellow")
puts(emil_car.color)
puts(emil_car.get_total_count)
bat_car = MyCar.new(2018, "Grey", "Subaru Legacy")
puts(bat_car.get_total_count)
puts(emil_car.get_total_count)
puts MyCar.get_count