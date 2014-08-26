# script_21_04.rb
=begin
Using nokogiri, parse the sdc.xml and display the following info, using xpath or css selector:
	01.	Original Keyword (orig-kw)
	02.	Server name  (engine)
	03.	Country (country_id)
	04.	Search engine version (kadu-version)
	05.	Name of the deal # 15
	06.	Description of the deal # 15
	07.	Display the length of the description deal # 15 
	08.	Price of the deal # 15
	09.	Url of the deal # 15
	10.	Product-id of the deal # 15                 
=end

require 'nokogiri'
require 'open-uri'
require 'openssl'

doc = Nokogiri::HTML(open("http://www.learn2test.net/sdc.xml"))

#01
puts "Original keyword is: #{doc.css('server orig-kw/text()')}"

#02


#05
puts "Name of the deal #15: #{doc.css('deals deal[xref="15"]/name/text()')}"

#06
puts "Description of the deal # 15: #{doc.xpath('//deals/deal[@xref="15"]/description/text()')}"

#07
puts "Length of the description deal # 15: #{doc.xpath('//deals/deal[@xref="15"]/description/text()').to_s.length}"


