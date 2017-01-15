# Simple Method that prints 1-10

def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10

# Method that just prints the message

def greeting
    puts "Hi, I'm a computer"
end

greeting

# Method that prints 1-10

def array_of_10
  puts (1..10).to_a
end

array_of_10


# Method Demonstrationg Splat Arguments -- the * means take as many are give
# So greeting "what up" is passed, and everything else goes into bros
# Prints What Up, blank! for each bro passed

def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")


# Nameless method -- much like lambda functions
# Defined with do & end or {}

1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }


# Demonstrating the difference between blocks (or nameless methods) and methods
# Methods can be called again and again while blocks only operate over what's given

# method that capitalizes a word

def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"

capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"


# Sorting using the sort method -- again ! is used to sort the underlying value of the variable instead of redefing it

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

# Call the sort! method on my_array below.
# my_array will then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].

my_array.sort!


# Combined Comparions Operator (<=>)
# This returns 0 if equal, 1 if first operand is greater, and -1 if first operand is less than
# So the below returns 1 (w before b)

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

book_1 <=> book_2