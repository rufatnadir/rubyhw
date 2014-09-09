require 'mechanize'

browser = Mechanize.new
browser.get("https://www.facebook.com/")
label = browser.parser.xpath

