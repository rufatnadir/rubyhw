=begin
Using gem mechanize and selector do following:
1. Open the sites: http://www.learn2test.net/cec/vol/lab/ruby_01/payment/
2. Extract Monthly Payment
3. Convert Monthly Payment to Float using reverse or slice
4. Calculate Annual Payment [Multiply Monthly Payment by 12]
5. Add zero to cents (double digits for cents)
6. Convert Annual Payment to String
7. Insert number separator (comma)
8. Inject dollars sign ($) to Annual Payment
9. Display Annual Payment:
=end

require 'mechanize'
require 'nokogiri'
require 'openssl'
require 'open-uri'

agent = Mechanize.new
doc = agent.get("http://www.learn2test.net/cec/vol/lab/ruby_01/payment/")
monthly_pay = doc.parser.xpath('//*[@id="id_monthly_payment"]').text
yearly_pay = monthly_pay.reverse.chop.reverse.gsub(/\,/,"").to_f*12
puts "Monthly payment is: #{monthly_pay} USD"
puts "Annual payment is: $#{yearly_pay} USD"