require 'nokogiri'
require 'open-uri'

fail("Usage: extract_links URL [http://sfbay.craigslist.org/search/cto?query=audi]") if ARGV.empty?

ARGV.each do |url|
doc = Nokogiri::HTML(open("http://sfbay.craigslist.org/search/cto?query=audi"))
hrefs = doc.css("a").map do |url|
if (href = link.attr("href")) && href.empty?
  URI::join(url, href)
end
end.compact.uniq
STDOUT.puts hrefs.join
end