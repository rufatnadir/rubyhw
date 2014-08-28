# script_21_03.rb
=begin
a. 	Using Google, found out your public IP Address (Search: What is my ip address)
	Your public IP address is: ???.???.???.???
b. 	Using geoPlugin web service, send a request:
	http://www.geoplugin.net/xml.gp?ip=???.???.???.???
c. 	Using nokogiri, parse the geoPlugin XML and display the following info:
	01.	geoplugin_city
	02.	geoplugin_region
	03.	geoplugin_areaCode
	04.	geoplugin_regionName
	05.	geoplugin_countryName
=end

require 'open-uri'
require 'nokogiri'

#Send request to geoplugin services
doc = Nokogiri::HTML(open("http://www.geoplugin.net/xml.gp?ip=69.181.139.6"))

#Using xpath, find city name
city = doc.xpath("//geoplugin_city/text()")
puts "City is: #{city.to_s}"

#Find region name
region = doc.xpath("//geoplugin_region/text()")
puts "Region is: #{region.to_s}"

#Find area code
area = doc.xpath("//geoplugin_areacode/text()")
puts "AreaCode is: #{area.to_s}"

#Find region name
region_name = doc.xpath("//geoplugin_regionname/text()")
puts "Region name is: #{region_name.to_s}"

#Find country
country = doc.xpath("//geoplugin_countryname/text()")
puts "Country is: #{country.to_s}"
