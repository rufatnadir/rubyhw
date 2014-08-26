=begin
Using gem nokogiri and selector XPath or CSS do following:

1.      Verify all deals content original price [orig-price]
2.      Verify all deals on sale [on-sale = 1] content sale price [price]
3.      Verify all deals NOT on sale [on-sale = 0] original price [orig-price] == sale price [price]
4.      Verify all deals on sale [on-sale = 1] original price [orig-price] > sale price [price]
5.      Deals on sale [on-sale = 1] display percentage of sale [or: $200 pr: $100 sale: 50%]
=end

require 'open-uri'
require 'nokogiri'

document = Nokogiri::XML(open("http://www.learn2test.net/sdc.xml"))


for item in 0..39
  price = document.xpath("//deals/deal[@xref='#{item}']/price/text()").to_s.to_f
  orig_price = document.xpath("//deals/deal[@xref='#{item}']/orig-price/text()").to_s.to_f
  on_sale = document.xpath("//deals/deal[@xref='#{item}']/on-sale/text()").to_s.to_i

  if orig_price == 0 then puts                            "FAILED :: Original price is 0 of item #{item+1}"
  elsif on_sale == 1 and price == 0 then puts             "FAILED :: Item on sale but price is 0 of item #{item+1}"
  elsif on_sale == 0 and price != orig_price then puts    "FAILED :: Price of item:  #{item + 1} - #{price} / #{orig_price}"
  elsif on_sale == 1 and price > orig_price then puts     "FAILED :: Price of item:  #{item + 1} - #{price} / #{orig_price}"
  elsif on_sale == 1 and price == orig_price then puts    "FAILED :: Price of item:  #{item + 1} - #{price} / #{orig_price}"
  elsif on_sale == 0 and price == orig_price then puts    "PASS   :: Price of item:  #{item + 1} - #{price} / #{orig_price}"
  elsif on_sale == 1 and price < orig_price then puts     "PASS   :: Price of item:  #{item + 1} - #{price} / #{orig_price}"
  else                                            puts    "N/A    :: Price of item:  #{item + 1} - #{price} / #{orig_price}"
  end
end
