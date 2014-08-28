require 'mechanize'

agent = Mechanize.new
doc = agent.get("http://www.learn2test.net/cec/vol/lab/ruby_01/tax/")
cast = doc.parser.xpath("//*[@id='id_monthly_payment']").text

pay = cast.slice(10,5).to_f
tax = cast.slice(22..25).to_f

monthly_payment = (pay + tax/100 * pay).to_f
monthly_rounded = monthly_payment.round(2)
anual_wtax = monthly_rounded * 12
anual_wtax = anual_wtax.to_s.reverse.scan(/(?:\d*\.)?\d{1,3}/).join(',').reverse
puts "Annual payment with Tax is: $#{anual_wtax} dollars"
