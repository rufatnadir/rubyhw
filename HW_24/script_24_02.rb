require 'selenium-webdriver'

site = Selenium::WebDriver.for :firefox
site.get('http://www.bing.com/')

site.save_screenshot "#{site.title}_#{Time.now.to_s[11..18]}.png"