# script_18_15.rb
=begin
Ranges as Condition: Using script below, display the following:

	1.	What is the result If score (nothing)  	score = 
	2.	What is the result If score 5			score = 5
	3.	What is the result If score 15			score = 15

=end

score = nil;
result = case score
           when 0..10 then
             "Fail"
           when 11..20 then
             "Pass"
           else
             "Invalid"

         end
puts "When score = #{score} result is: #{result}"

score = 5;
    result = case score
               when 0..10 then
                 "Fail"
               when 11..20 then
                 "Pass"
               else
                 "Invalid"

             end
puts "When score = #{score} result is: #{result}"


score = 15;
result = case score
           when 0..10 then
             "Fail"
           when 11..20 then
             "Pass"
           else
             "Invalid"

         end
puts "When score = #{score} result is: #{result}"
