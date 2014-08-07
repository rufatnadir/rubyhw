#	script_13_01.rb
=begin
a.	Create 4 empty arrays:
	1.	days
	2.	week
	3.	months
	4.	contacts (array of array)

b.	For each array (4) provide the following info:
	1.	Display the class of each array
	2.	Display the size of each array
	3.	Display the first item of each array
	4.	Display the last item of each array
	5.	Verify if that array is empty.
=end

# a
days = []
week = []	
months = []	
contacts = []

# b
puts "Class of array 'days' is: #{days.class}"
puts "Size of array 'days' is: #{days.size}"
puts "First item of array 'days' is: #{days.first}"
puts "Last item of array 'days' is: #{days.last}"
puts "Is array 'days' empty?: #{days.empty?}\n\n"

puts "Class of array 'week' is: #{week.class}"
puts "Size of array 'week' is: #{week.size}"
puts "First item of array 'week' is: #{week.first}"
puts "Last item of array 'week' is: #{week.last}"
puts "Is array 'week' empty?: #{week.empty?}\n\n"

puts "Class of array 'months' is: #{months.class}"
puts "Size of array 'months' is: #{months.size}"
puts "First item of array 'months' is: #{months.first}"
puts "Last item of array 'months' is: #{months.last}"
puts "Is array 'months' empty?: #{months.empty?}\n\n"

puts "Class of array 'contacts' is: #{contacts.class}"
puts "Size of array 'contacts' is: #{contacts.size}"
puts "First item of array 'contacts' is: #{contacts.first}"
puts "Last item of array 'contacts' is: #{contacts.last}"
puts "Is array 'contacts' empty?: #{contacts.empty?}\n\n"