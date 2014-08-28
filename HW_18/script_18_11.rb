# script_18_11.rb
# Display (true of false) if string caw present in the following range: from cab to cat

range = ("cab" .. "cat")

puts "Range include 'caw'?: #{range.include?'caw'}"

#or

puts range === 'caw'
