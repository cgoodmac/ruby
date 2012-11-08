require 'pry'

load 'food.rb'
load 'protein.rb'
load 'carb.rb'
load 'menu.rb'

available_menus = {}

puts "Create a (p)late or (q)uit?"
prompt_plate = gets.chomp

while prompt_plate != 'q'

	#creates a new empty plate array each time the loop runs
	plate = []

	puts "Add a (p)rotein or (c)arb to the plate, or (q)uit?"
	prompt_food = gets.chomp


	#begin adding proteins or carbs to create a plate
	while prompt_food != 'q'

		case prompt_food
		when 'p'
			puts "What kind of protein?"
			animal_type = gets.chomp
		when 'c'
			puts "What kind of carb?"
			grain_type = gets.chomp
		end 

		puts "Calories?"
		calories = gets.chomp.to_i

		puts "Servings?"
		servings = gets.chomp.to_i

		puts "Prep time?"
		preptime = gets.chomp.to_i

		case prompt_food
		when 'p'
			p1 = Protein.new(animal_type, calories, servings, preptime)
			plate << p1
		when 'c'
			c1 = Carb.new(grain_type, calories, servings, preptime)
			plate << c1
		end

	puts "Add a (p)rotein or (c)arb to the plate, or (q)uit?"
	prompt_food = gets.chomp

	end

	#end plate creation process

	puts "Here are available menus: #{available_menus}"
	puts "Add plate to (e)xisting menu or (c)reate a new menu?"
	prompt_menu = gets.chomp

	if prompt_menu == 'c'

		puts "Name the new weekly menu"
		menu_name = gets.chomp

		available_menus[menu_name] = Menu.new(menu_name)

	end

	puts "Here are available menus: #{available_menus.keys.join(', ')}"
	puts "Which menu do you want to add the plate to?"
	pick_menu = gets.chomp


	puts "What day of the week do you want to add the plate to?"
	menu_day = gets.chomp

	available_menus[menu_name].menu[menu_day] = plate

	available_menus.each do |i|
		puts "Menu #{i}"
		puts "Menu items #{available_menus[menu_name].menu}"
	end	

	puts "Create a (p)late or (q)uit?"
	prompt_plate = gets.chomp		

end

















