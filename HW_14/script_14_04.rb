# script_14_04.rb
# Display result of the division operation (3 results: 1 - integer, 2 - float, 3 - rounded to 2 decimal) using following variables:  a, b

a = 10
b = 3
result = a/b

puts "Division of #{a} and #{b}"
puts "Result in integer: #{result}"
puts "Result in float: #{a/b.to_f}"
result = a/b.to_f
puts "Result in round decimal: #{result.round(2)}"
