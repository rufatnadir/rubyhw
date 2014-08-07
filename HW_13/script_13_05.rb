# script_13_05.rb
=begin
For array "months" provide following:
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

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
puts "1. Class of the array 'months' is:  #{months.class}"
puts "2. Size of the array 'months' is: #{months.size}"
puts "3. First item of the array is: #{months.first}"
puts "4. Last item of the array is: #{months.last}"
puts "5. Array sorted ascending: #{months.sort}"
puts "6. Array sorted descending: #{months.sort{|a,b| b <=> a}}"
puts "7. Array in reverse: #{months.reverse}"
puts "8. Array in shuffle: #{months.shuffle}"
puts "9. Convert array to string #{months.to_s}"
months = []
puts "10. Is array empty now: #{months.empty?}"