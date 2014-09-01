require 'selenium-webdriver'


print "\####################################### \n"
print "\# User \t\t: #{ENV["USER"]} \n"
print "\# Email \t: rufat.nadir@gmail.com \n"
print "\# \n"
print "\# Date \t\t: #{Time.now.to_s[0..18]} \n"
=begin
if RUBY_PLATFORM =~ /linux/; os = "Linux"
  elsif RUBY_PLATFORM =~ /32/; os = "Windows"
  else os = "Unknown"

end
=end
file_name = __FILE__
print "\# File \t\t: #{file_name.split("/").to_a.last.to_s} \n"

