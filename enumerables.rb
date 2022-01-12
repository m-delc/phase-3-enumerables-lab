require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
 spicy_foods.map { |f| f[:name] }
end




# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  spicy_foods.select { |f| f[:heat_level] > 5 }
end



# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods) 
  spicy_foods.each do |food| 
    heat= food[:heat_level]
    name = food[:name]
    cuisine = food[:cuisine]
    heat_emoji = "🌶"
    mult = heat_emoji * heat
    puts "#{name} (#{cuisine}) | Heat Level: #{mult}"
  end
end




# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # spicy_foods.select { |k, v| v== #{cuisine}"s" }
  # # x[:name]
  # x = spicy_foods.include?(cuisine)
  # spicy_foods.filter(#{cuisine}))
  # spicy_foods.select { |food| food[:cuisine] == #{cuisine} }

  # this almost worked but returned an array.
  #   apparently, .select returns every match into
  #   an arr, while .find will only return the first 
  #   match and puts that return into a hash
  # spicy_foods.select { |food| food[:cuisine] == cuisine }

  # cuisine2 = cuisine
  # spicy_foods.select { |k,v| v== #{cuisine} }
  # spicy_foods.select do |b|
  #   b[:cuisine] == cuisine
  # spicy_foods.values { |b| binding.pry }


  spicy_foods.find { |food| food[:cuisine] == cuisine}

end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  spicy_foods.sort_by { |x| x[:heat_level] }
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  heat = spicy_foods.find_all { |b| b[:heat_level] > 5 }
    heat.each do |x|
      name = x[:name]
      cuisine = x[:cuisine]
      level = x[:heat_level]
      heat_emoji = "🌶"
      mult = heat_emoji * level
      puts "#{name} (#{cuisine}) | Heat Level: #{mult}"
    end

  
  # spicy_foods.each do |food| 
    #   # heatoverfive = food.select { |b| b[:heat_level] > 5 }
    #   # heatoverfive = food.min { |a, b| a[:heat_level] <=> b[:heat_level] }
    #   # heatoverfive = food[:heat_levels] { |}
    #   # binding.pry
    # name = food[:name]
    # cuisine = food[:cuisine]
    # heat_emoji = "🌶"
    # mult = heat_emoji * heatoverfive
    # puts "#{name} (#{cuisine}) | Heat Level: #{mult}"

    # heat = food[:heat_level] > 5
    # binding.pry
    # end
    
  #   # puts "#{name} (#{cuisine}) | Heat Level: (#{mult} > 5)"
  # binding.pry
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  x = spicy_foods.sum { |b| b[:heat_level] }
  x / 3
end
