counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

# backwards while
counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter += 1
end

# for over a range from 1 up to 10 (1-9)
for num in 1...10
  puts num
end

# for over a range up to and including 10
for num in 1..15
  puts num
end


# Loop executes everything after do till break kicks in
i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

# Next is equal to continue in py
i = 20
loop do
  i -= 1
  next unless i % 2 == 0
  print "#{i}"
  break if i <= 0
end


#.each allows you to iterate over an array and execute the do code
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

# .times executes the do code x number of times
15.times do
    puts "I'm a fluffy beaver"
end

# Can use {} instead of do
30.times { print "Ruby!" }