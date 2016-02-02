class Pastries
    
    attr_accessor :flavor
end

class Donut < Pastries
    def eat
        return "Yummy!!"
    end
end

class Cake < Pastries
    def eat
        return "Double yum!"
    end
end

my_donut = Donut.new
my_donut.flavor = "Chocolate"
my_donut_flavor = my_donut.flavor
puts "#{my_donut_flavor} is delicious and I say #{my_donut.eat}"
my_cake = Cake.new
my_cake.flavor = "Strawberry"
my_cake_flavor = my_cake.flavor
puts "#{my_cake_flavor} is #{my_cake.eat}"
puts my_donut.inspect
puts my_cake.inspect

