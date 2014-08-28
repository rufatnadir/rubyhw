# script_21_02.rb
=begin
Using gem nokogiri and selector CSS do following:
Open the following sites and display theirs title and it’s length
	01.	http://www.ebay.com
	02.	https://www.google.com
	03.	http://www.apple.com
	04.	http://www.microsoft.com
	05.	http://www.intel.com
=end

require 'nokogiri'
require 'open-uri'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

site_e = "Ebay"
url_e = "http://www.ebay.com"
doc_e = Nokogiri::HTML(open(url_e))
title_e = doc_e.css("//title text()")
puts "#{site_e} title is: " + title_e.to_s
puts "Title length is: #{title_e.text.length} characters"

site_g = "Google"
url_g = "https://www.google.com"
doc_g = Nokogiri::HTML(open(url_g))
title_g = doc_g.css("//title text()")
puts "#{site_g} title is: " + title_g.to_s
puts "Title length is: #{title_g.to_s.length} characters"

site_a = "Apple"
url_a = "http://www.apple.com"
doc_a = Nokogiri::HTML(open(url_a))
title_a = doc_a.css("//title text()")
puts "#{site_a} title is: " + title_a.to_s
puts "Title length is: #{title_a.to_s.length} characters"

site_m = "Microsoft"
url_m = "http://www.microsoft.com"
doc_m = Nokogiri::HTML(open(url_m))
title_m = doc_m.css("//title text()")
puts "#{site_m} title is: " + title_m.to_s
puts "Title length is: #{title_m.to_s.length} characters"

site_i = "Intel"
url_i = "http://www.intel.com"
doc_i = Nokogiri::HTML(open(url_i))
title_i = doc_i.css("//title text()")
puts "#{site_i} title is: " + title_i.to_s
puts "Title length is: #{title_i.to_s.length} characters"

