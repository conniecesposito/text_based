class Character

  attr_accessor :name, :health, :currency

  def initialize(name = "default")
    @name = name
    @health= 100
    @currency= 0

  end

  def charHurt
    @health= health - 10

  end

  def charHeal
    @health = health + 10
  end

   def getRich
     @currency = currency +10
   end

   def getPoor
     @currency = currency - 10
   end

end


class Sloth < Character
  attr_accessor :fur, :intelligence, :speed, :food, :goal, :choice

  def initialize(name = "default", fur = "default", food= "default")
    super(name)
    @fur = fur
    @intelligence = "dumb"
    @speed = 0
    @food = food
    @goal = 100
    @choice = ""

  end

  def SpeedChoice
    if @goal !=0  && @health > 0

      if @speed == 10
        @goal = goal - 10

      elsif @speed == 25
        @health=health-10
        @goal = goal - 25

      else
        @health= health-25
        @goal = goal - 50
      end

    elsif goal <=0 && @health >0
      p "You win"

    elsif health <= 0
      p "You die"

    else
      p "There was a error"
    end
  end




  def foodIntake
    p "hi"
    if @choice == "Yes"
      if rand(0..10)> 5
        @health = health + 10
      else
        p "You got a bad banana your health decreases by 10"
        @health = @health - 10
      end
    end
  end


end







my_char = Sloth.new
p my_char.SpeedChoice
p my_char.goal

class Human < Character
  def initialize (name = "default")
    super(name)
  end
end

# my_Sloth=Sloth.new()
#
# p my_Sloth



puts "Choose your sloth's name."

name = gets.chomp

puts "Hello #{name} the sloth. Are you ready to enter the land of the Trees? Yes you are!"
puts " "


puts "Choose your sloth's fur color"

fur = gets.chomp

puts "You are now a #{fur} sloth."
puts " "
my_char = Sloth.new(name,fur)

puts "You are a sloth named #{my_char.name} with #{my_char.fur} fur. You are a #{my_char.intelligence} Sloth. You have #{my_char.currency} Sloth coins and #{my_char.health} health. Your current speed is #{my_char.speed} mpy (miles per year). Welcome to your new tree"
puts " "


puts "You are at the top of the tree and you suddenly feel the urge to poo."
puts " "

puts "In order to poo you must make your way to the bottom of the tree."
puts " "

puts "There are many dangers lurking on the way to the bottom of the tree."
puts " "

puts"To make it to the bottom of the tree, you must avoid predators, make it to ground zero, and preserve your health."
puts " "

puts"TIPS: bananas will replenish your health."
puts " "

puts"TIPS: You can choose your speed, but be aware that if you choose to go fast it will deplete your health."
puts " "

puts"You can collect sloth coin to spend on the dark web to cheat your way to the bottom (if you dare)."
puts " "

puts "Omygosh did you see that?!"
puts " "

puts "Across the canopy there is a pteradactyle! Its coming closer! What are you going to do?!"
puts " "

puts"Its time to make your getaway"
puts " "

puts"Choose your speed (10,25,50)"
puts " "

speed=gets
p "#{my_char.speed} + original speed"
my_char.speed = speed
p "#{my_char.health} + original health"
my_char.SpeedChoice
p "#{my_char.health} + new health"
p "#{my_char.goal} + end goal"



puts"That was scary, but you made it. Whew."
puts " "

puts"We had better be careful and take a break. You new health is #{my_char.health}, and you are #{my_char.goal} feet from the ground"
puts " "


puts"Do you want to stop and have a snack? (Yes or No?)"
puts " "



choice=gets.chomp
p "#{my_char.health} + original health"

my_char.choice = choice
p my_char.choice
my_char.foodIntake
p "#{my_char.health} + new health"

puts "Across the canopy there is a pteradactyle! Its coming closer! What are you going to do?!"
puts " "

puts"Its time to make your getaway"
puts " "

puts"Choose your speed (10,25,50)"
puts " "

speed=gets
p "#{my_char.speed} + original speed"
my_char.speed = speed
p "#{my_char.health} + original health"
my_char.SpeedChoice
p "#{my_char.health} + new health"
p "#{my_char.goal} + end goal"



puts"That was scary, but you made it. Whew."
puts " "

puts"We had better be careful and take a break. You new health is #{my_char.health}, and you are #{my_char.goal} feet from the ground"
puts " "


puts"Do you want to stop and have a snack? (Yes or No?)"
puts " "



choice=gets.chomp
p "#{my_char.health} + original health"

my_char.choice = choice
p my_char.choice
my_char.foodIntake
p "#{my_char.health} + new health"

puts "Across the canopy there is a pteradactyle! Its coming closer! What are you going to do?!"
puts " "

puts"Its time to make your getaway"
puts " "

puts"Choose your speed (10,25,50)"
puts " "

speed=gets
p "#{my_char.speed} + original speed"
my_char.speed = speed
p "#{my_char.health} + original health"
my_char.SpeedChoice
p "#{my_char.health} + new health"
p "#{my_char.goal} + end goal"



puts"That was scary, but you made it. Whew."
puts " "

puts"We had better be careful and take a break. You new health is #{my_char.health}, and you are #{my_char.goal} feet from the ground"
puts " "


puts"Do you want to stop and have a snack? (Yes or No?)"
puts " "



choice=gets.chomp
p "#{my_char.health} + original health"

my_char.choice = choice
p my_char.choice
my_char.foodIntake
p "#{my_char.health} + new health"
