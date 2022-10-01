class MyCar
    attr_accessor :speed
    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
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
end

emil_car = MyCar.new(2019, "Grey", "Subaru Legacy")
puts(emil_car.speed)
emil_car.speedUp(10)
puts(emil_car.speed)
emil_car.brake(5)
puts(emil_car.speed)
emil_car.shutCarOff()
puts(emil_car.speed)