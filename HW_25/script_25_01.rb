require 'watir-webdriver'
browser = Watir::Browser.new :firefox

browser.driver.manage.timeouts.implicit_wait = 5

url = "http://www.bing.com"
query = "What is Selenium?"

browser.goto url
puts "================================================="
puts "Title of 'bing.com' is: #{browser.title}"
puts "URL of 'bing.com' is: #{browser.url}"

field = browser.text_field(:id, 'sb_form_q')
field.exists?
field.set query

button = browser.button(:id, 'sb_form_go')
button.click
browser.screenshot.save "pics/bing_1.png"

browser.link(:text => /Wikipedia/).click
browser.screenshot.save "pics/wiki_page.png"

puts "================================================="
puts "Title of new page is: #{browser.title}"
puts "URL of new page is: #{browser.url}"

browser.link(:text => /About/).click
browser.screenshot.save "pics/wiki_about.png"
puts "================================================="
puts "Title of About page is: #{browser.title}"
puts "URL of About page is: #{browser.url}"

browser.back
browser.screenshot.save "pics/back.png"
puts "========================================"
puts "Title of Blog page: #{browser.title}"
puts "URL of Blog page: #{browser.url}"

browser.close