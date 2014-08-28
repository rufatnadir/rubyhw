<<<<<<< HEAD
﻿# script_13_04.rb
=begin
For array "week" provide following:
	1.	Display the class of the array
	2.	Display the size of the array
	3.	Display the first item of the array
	4.	Display the last item of the array
	5.	Sort this array in ascending order (a to z)
	6.	Sort this array in descending order (z to a)
	7.	Display this array in reverse order
	8.	Display this array in shuffle order
	9.	Convert this array in to string and display it
	10.	Removes all elements from this array
=end
week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

#require_relative 'script_13_02'
puts "1. Class of array 'week' is #{week.class}\n"
puts "2. Size of array 'week' is #{week.size}\n"
puts "3. First item of 'week' is #{week.first}\n"
puts "4 Last item of 'week' is #{week.last}\n"
puts "5. Sorting array ascending (a_z) #{week.sort}"
puts "6. Sorting array descending (z_a) #{week.sort{|a,b| b <=> a}}"
puts "7. Reverse order: #{week.reverse}\n"
puts "8. Shuffle order: #{week.shuffle}\n"
puts "9. Convert array to string: #{week.to_s}\n"
week = []
puts "10. Removed array items. Is array empty now: #{week.empty?}"
=======
﻿# script_13_04.rb
=begin
For array "week" provide following:
	1.	Display the class of the array
	2.	Display the size of the array
	3.	Display the first item of the array
	4.	Display the last item of the array
	5.	Sort this array in ascending order (a to z)
	6.	Sort this array in descending order (z to a)
	7.	Display this array in reverse order
	8.	Display this array in shuffle order
	9.	Convert this array in to string and display it
	10.	Removes all elements from this array
=end
>>>>>>> bdb9aeaced2654b72cccd01e13a0b5fc2b9a34a7
