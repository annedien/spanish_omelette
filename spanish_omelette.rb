# Helper methods
def print_divider
puts "*" * 10
puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "."}
  puts "\n"
end

#defining the ingredients array with hashes
NUM_POTATOES=5
NUM_EGGS=6

ingredients=[
  {name:'potatoes', quantity:'NUM_POTATOES'},
  {name:'egg', quantity:'NUM_EGGS'},
  {name:'onion', quantity:1},
  {name:'oil', quantity:'some'},
  {name:'salt', quantity:'some'},
]

#printing out the ingredients
puts "* Lets cook a spanisch Omelette! *"
print_divider #helper method

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

#Asking user if he got all ingredients

loop do
  puts " Do you have all ingredients? [Y/N]?" #ask
  answer= gets.chomp.upcase  #get answer
if answer == 'Y'
  puts "Let's start cooking!"
  break
elsif answer == 'N'
    puts "You need to go shopping"
  else
    puts "That's not a valid input. Try again."
end
end

#Defining the recipe Steps with step_description and action
steps=[
  { description: "Scrape potatoes", action: "scrape_potatoes" },
  { description: "Cut potatoes into thick slices", action: "cut_potatoes" },
  { description: "Chop the onion", action: "generic_recipe_step" },
  { description: "Heat the oil in a large frying pan", action: "generic_recipe_step" },
  { description: "Add potatoes to the pan", action: "add_potatoes_to_pan" },
  { description: "Add onion to the pan", action: "generic_recipe_step" },
  { description: "Strain potatoes and onions through a colander into a large bowl", action: "generic_recipe_step" },
  { description: "Break the eggs", action: "break_eggs" },
  { description: "Beat the eggs separately", action: "generic_recipe_step" },
  { description: "Stir into the bowl the potatoes with plenty of salt", action: "generic_recipe_step" },
  { description: "Heat a little of the strained oil in a smaller pan", action: "generic_recipe_step" },
  { description: "Tip everything into the pan and cook on a moderate heat", action: "generic_recipe_step"},
  { description: "When almost set, invert on a plate and slide back into the pan", action: "generic_recipe_step" },
  { description: "Cook a few more minutes and slide on to a plate and cool for 10 minutes before serving", action: "generic_recipe_step" }
]

#printing out the Steps
print_divider
puts "See below the different steps to follow:"

steps.each_with_index do |step, index| puts (index+1).to_s + ")"+ step[:description]
end

#Defining the steps actions
def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def scrape_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Scraping potato #{counter}"
    print_progress_bar
  end
end

def cut_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Cutting potato #{counter} into thick slices"
    print_progress_bar
  end
end

def add_potatoes_to_pan
  for counter in 1..NUM_POTATOES
    print "Adding potato #{counter} to the pan."
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "Breaking egg #{counter}"
    print_progress_bar
  end
end

#Asking User if ready for next Step

def ask_if_ready(step, index)
  puts "are you ready for step #{index + 1}?\n (#{steps[:description]})"
  answer= gets.chomp.

  answer.upcase =="Y"
end
