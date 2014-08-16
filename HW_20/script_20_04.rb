# script_20_04.rb
=begin
a.	Call method "my_method" (defined in script script_20_01.rb)
b.	Call method "my_method_param" with passing parameter "name" with value "Your Name" (defined in script script_22_02.rb)
c.	Call method "my_method_param_default" WITHOUT passing parameter (defined in script script_22_03.rb)
d.	Call method "my_method_param_default" with parameter "name" and value "Some other Name" (defined in script script_22_03.rb)
=end

require './script_20_01'
my_method

require './script_20_02'
my_method_param("Rufat")

require './script_20_03'
my_method_param_default