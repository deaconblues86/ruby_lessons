puts "Input your String"

text = gets.chomp

puts "Redact"

redact = gets.chomp

words = text.split(" ")

words.each do |t|
    if t == redact
        t = "REDACTED"
    end
    print t + " "
end