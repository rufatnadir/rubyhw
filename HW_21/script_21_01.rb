# script_21_01.rb
=begin
Using gem nokogiri and selector XPath do following:
Open the following sites and display theirs title and it’s length
	01.	http://www.ebay.com
	02.	https://www.google.com
	03.	http://www.apple.com
	04.	http://www.microsoft.com
	05.	http://www.intel.com
=end

require 'open-uri'
require 'nokogiri'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# Ebay
site_01 = "Ebay"
url_01 = "http://www.ebay.com"
doc_01 = Nokogiri::HTML(open(url_01))
title_01 = doc_01.xpath("//title/text()")
puts "01: #{site_01} title is: " + title_01.to_s
puts "01: Length of the title is: #{title_01.text.length}"

# Google (using HTTPS)
site_02 = "Google"
url_02 = "https://www.google.com"
doc_02 = Nokogiri::HTML(open(url_02))
title_02 = doc_02.xpath("//title/text()")
puts "02: #{site_02} title is: " + title_02.to_s
puts "02: Length of the title is: #{title_02.text.length}"

# Apple
site_03 = "Apple"
url_03 = "http://www.apple.com"
doc_03 = Nokogiri::HTML(open(url_03))
title_03 = doc_03.xpath("//title/text()")
puts "03: #{site_03} title is: " + title_03.to_s
puts "03: Length of the title is: #{title_03.text.length}"

# Microsoft
site_04 = "Microsoft"
url_04 = "http://www.microsoft.com"
doc_04 = Nokogiri::HTML(open(url_04))
title_04 = doc_04.xpath("//title/text()")
puts "04: #{site_04} title is: " + title_04.to_s
puts "04: Length of the title is: #{title_04.text.length}"

# Intel
site_05 = "Intel"
url_05 = "http://www.intel.com"
doc_05 = Nokogiri::HTML(open(url_05))
title_05 = doc_05.xpath("//title/text()")
puts "05: #{site_05} title is: " + title_05.to_s
puts "05: Length of the title is: #{title_05.text.length}"
