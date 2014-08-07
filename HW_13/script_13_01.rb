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
puts "Is array 'days' empty?: #{days.empty?}"
