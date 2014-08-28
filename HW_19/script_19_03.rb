# script_19_03.rb
=begin
For hash "year" provide following:
	1.	Display the class of the hash
	2.	Display the size of the hash
	3.	Display the all keys of the hash
	4.	Display the all values of the hash
	5.	Sort this hash in ascending order (a to z)
	6.	Sort this hash in descending order (z to a)
	7.	Convert this hash in to string and display it
	8.	Convert this hash in to array and display it
	9.	Removes all elements from this hash
=end

year = {
    :january => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :february => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],
    :march => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :april => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :may => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :june => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :july => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :august => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :september => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :october => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :november => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :december => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
}

puts "Class of the hash 'year' is #{year.class}"
puts "Size of the hash 'year' is #{year.size}"
puts "Keys of hash 'year': #{year.keys}"
puts "VAlues of the hash 'year': #{year.values}"
puts "Sorting (ASC) of hash 'year' is: #{year.sort}"
puts "Sorting (DESC) of hash 'year' is: #{year.sort{|a,b| b <=> a}}"
puts "Converting hash 'year' to string: #{year.to_s}"
puts "Converting hash 'year' to array: #{year.to_a}"
puts "Removing all elements from hash 'year': #{year.clear}"
