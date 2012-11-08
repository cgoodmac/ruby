def create_food(response)
  puts "Calories?"
  calories = gets.chomp
  puts "Servings?"
  servings = gets.chomp
  puts "Prep Time?"
  prep = gets.chomp

  if response == 'p'
    puts "Animal?"
    animal_type = gets.chomp
    food = Protein.new(animal_type, calories, servings, prep)
  else
    puts "Grain?"
    grain_type = gets.chomp
    food = Carb.new(grain_type, calories, servings, prep)
  end
end


#starts here when you create a plate
def create_plate
  plate = []
  puts "(p)rotein or (c)arb or (q)uit?"
  response = gets.chomp

  while response != 'q'
    plate << create_food(response) #create_food needs to exist before it can be called so that's why the first function starts here
    puts "(p)rotein or (c)arb or (q)uit?"
    response = gets.chomp
  end

  plate # shows array of food on plate
end

def put_plate_in_menus(plate)
  puts "List of menus (or new name): #{@menus.keys.join(', ')}?"
  menu_name = gets.chomp.downcase
  puts "What day (sunday to saturday)?"
  menu_day = gets.chomp.downcase
  @menus[menu_name] = {} if @menus[menu_name].nil? #one line if statement: if menu "mexican" is not there, nil, then create a blank hash {}
  @menus[menu_name][menu_day] = plate #its a hash inside a hash
  #################
  #       ^
  # the value of this key is a HASH! so the syntax makes sense
  # in the hash "@menus", the key is Mexican. 
  # the value of that key is a HASH
  # the key of that nested hash is the day, and you're inserting plate as the value
  # the equals is the action. Everything before that is finding the location to do that thing
end

def add_menu_to_person
  puts "List of people (or new name): #{@people.keys.join(', ')}?"
  person_name = gets.chomp.downcase
  @people[person_name] = create_person(person_name) if @people[person_name].nil?
  puts "List of menus: #{@menus.keys.join(', ')}?"
  menu_name = gets.chomp.downcase
  @people[person_name].menus << @menus[menu_name] if check_calorie_count(@people[person_name], @menus[menu_name]) #this line adds the menu is 
end

def create_person(name)
  puts "Type"
  type = gets.chomp
  Person.new(name, type)
end

def check_calorie_count(person, menu)
  if person.type == "kid"
    menu.values.map{|x| x.map{|y| y.calories_per_serving.to_i * y.number_of_servings.to_i}.inject(&:+)}.select{|z| z > 1000}.empty?
    #go into array into the next array, produce array of servings x calories, then inject sums up the numbers inject(&:+) then the select checks if it's over 1000 calories
  else
    true
  end
end