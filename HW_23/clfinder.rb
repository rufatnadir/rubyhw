require 'mechanize'

agent = Mechanize.new
doc = agent.get("http://sfbay.craigslist.org/cto/")

puts doc

#honda = doc.parser.xpath("//*[contains(text(), '[honda]']")
#honda = doc.parser.xpath('//*[@class="hdrlink"]').to_s
ad_body = doc.parser.xpath("//a[@class='hdrlink']").text
puts ad_body
