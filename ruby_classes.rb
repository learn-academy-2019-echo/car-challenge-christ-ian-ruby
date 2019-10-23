class Vehicle
    def initialize ()
        @my_vehicle = my_vehicle
        @lights = false
        @speed = 0
        # @change_speed = 0
    end
    def my_vehicle
        @my_vehicle
    end
    def change
        @speed
    end
    def on_off
        if @lights == false
            @lights = true
        else
            @lights = false
        end
    end
    def speed
        @speed
    end
    def change_the_speed
        p "The speed of the car is currently #{@speed}, if you would likke to speed up or slow down, please type a positive number to speed up and a negative to slow down"
        change_speed = gets.chomp.to_i
        p change_speed
        @speed = change_speed + @speed
        p "The new speed of the car is #{@speed}"
    end
end

class Car < Vehicle
    def initialize (type,num_wheels, model_year)
        super()
        @my_car = my_car
        @type = type
        @model_year = model_year
        @num_wheels = num_wheels
        @signal = 'off'

    end
    def my_car
        @my_car
    end
    def model_year
        @model_year
    end
    def num_wheels
        @num_wheels
    end
    def signal_method
        if @signal == 'off'
            puts 'Would you like to turn the signals on? Input Left or Right to turn on or "off" to leave off'
            signal_status = gets.chomp.downcase
        elsif @signal == 'right'
            puts 'Would you like to turn the signal off? Type off to do so or Left or Right to leave on'
            signal_status = gets.chomp.downcase
        elsif @signal == 'left'
            puts 'Would you like to turn the signal off? Type off to do so or Left or Right to leave on'
            signal_status = gets.chomp.downcase
        end
    end
end

testVehicle = Car.new('Honda',4, 2017)
tesla = Car.new('tesla', 4, 2019)
honda2 = Car.new('Honda',4,1985)
#p testVehicle.change_the_speed
#p testVehicle
#p tesla

car_array =[tesla, testVehicle, honda2]
# p car_array
p car_array.sort { |y, x| y.model_year <=> x.model_year}
