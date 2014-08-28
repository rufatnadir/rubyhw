# script_17_16.rb
=begin
	1. 11 exists in the range from 1 to 10
	2. k exists in the range from a to z
	3. cat exists in the range from cab to caw
=end


range_num = (1..10); puts "'11' exists in the range from 1 to 10: #{range_num === 11}";
range_az = ("a".."z"); puts "'k' exists in the range from a to z: #{range_az === "k"}"
range_ca = ("cab" .. "caw"); puts "'cat' exists in the range from cab to caw: #{range_ca.include?("cat")}"