
# Multi dim array - prints each array in array
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

# Hashes are like Dictionaries
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

# Init empty Hash
pets = Hash.new

# Adds Stevie to Hash
pets["Stevie"] = "cat"


# Using .each with Hash
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }


# Iterating over multi dim array using .each
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |x| puts x}} 


# Printing out only the values in the hash -- need to test the commented out stuff as i think it should work
lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

=begin
lunch_order.each do |x|
    puts x
    puts lunch_order[x]
end
=end 

lunch_order.each {|x, y| puts y}

#---------------------
# Creates a histogram
#---------------------
puts "Text please: "
text = gets.chomp

words = text.split(" ")

# sets up a new hash with a default value of 0 -- if you pump in a key that doesn't exist, that's what you'll get in return
frequencies = Hash.new(0)

# adds one for each instance of the word in our array
words.each { |word| frequencies[word] += 1 }

# Sorts by count from smallest to largest
frequencies = frequencies.sort_by {|a, b| b }

# Reverses Sort - Bang forces change to underlying value (instead of having to write var = var.reverse)
frequencies.reverse!

# Puts out results (.to_s converts to string)
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }




### ! This is my own version of the above ###
puts "Give me some text"

text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

words.each do |word|
    frequencies[word] += 1
end

frequencies = frequencies.sort_by { |key,val| val}
frequencies.reverse!

frequencies.each do |key,val|
    puts "#{key} #{val}"
end