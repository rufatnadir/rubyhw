# script_13_03.rb
=begin
For array "days" provide following:
	1.	Display the class of this array
	2.	Display the size of this array
	3.	Display the first item of this array
	4.	Display the last item of this array
	5.	Display this array in reverse order
	6.	Display this array in shuffle order
	7.	Verify if this array is contains # 15?
	8.	Verify if this array is contains # 32?
	9.	Convert this array in to string and display it
	10.	Removes all elements from this array
=end

days = (01..31).to_a
puts "1. Class of array 'days' is #{days.class}\n"
puts "2. Size of array 'days' is #{days.size}\n"
puts "3. First item of 'days' is #{days.first}\n"
puts "4. Last item of 'days' is #{days.last}\n"
puts "5. Reverse order: #{days.reverse}\n"
puts "6. Shuffle order: #{days.shuffle}\n"
puts "7. Check if 'days' contains # 15:  #{days.include? 15}\n"
puts "8. Check if 'days' contains # 32:  #{days.include? 32}\n"
puts "9. Convert array to string: #{days.to_s}\n" #need clarification
days = []
puts "10. Is array empty now: #{days.empty?}"

