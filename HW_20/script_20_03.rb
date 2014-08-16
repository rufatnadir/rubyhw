# script_20_03.rb
=begin
a.	Define the method "my_method_param_default" with parameter "name" with default value "Your Name":
b.	Call this method WITHOUT passing parameter.
c.	Call this method with parameter "name" and value "Some other Name"
=end

def my_method_param_default(name="John")
  print "My name is #{name}"
end

my_method_param_default()

my_method_param_default("Rufat")
