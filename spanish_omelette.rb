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
