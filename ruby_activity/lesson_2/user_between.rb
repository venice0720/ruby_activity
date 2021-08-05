puts "Enter a number between 0 and 100."
num = gets.chomp.to_i

if num < 0
  puts "Negative Number"
elsif num <= 50
  puts "#{num} is between 0 and 50"
elsif num <= 100
  puts "#{num} is between 51 and 100"
else
  puts "#{num} is above 100"
end