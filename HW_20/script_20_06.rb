# script_20_06.rb
=begin
a.	Create method "calc_sum_any" with parameters do following:
b.	Call this method 3 times with multiple parameters with values:
	Call # 1: 1, 5, 4
	Call # 2: 22, 55, 634, 647, 226, 416
	Call # 3: 543, 56, 3, 245, 456, 3345, 1, 776, 4865, 2998, 1712
=end

def calc_sum_any(first, *rest)
	rest.each {|r| first = first + r}
	puts first
end

calc_sum_any(1,5,4)
calc_sum_any(22, 55, 634, 647, 226, 416)
calc_sum_any(543, 56, 3, 245, 456, 3345, 1, 776, 4865, 2998, 1712)
