require 'sauce_whisk'
require 'selenium-webdriver'

DEFAULT_WAIT = 60
AUTH_DETAILS = "#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}"
BASE_URL = "http://bleacherreport.com/"

Before('@mweb') do |scenario|
  TestHelper.set_test_name(scenario)
  TestHelper.create_mobile_web_driver
  $driver.manage.timeouts.implicit_wait = DEFAULT_WAIT  
end

Before('@mobile') do |scenario|
  ENV['ENV'] ||= ""
  ENV['PREFIX'] ||= ""
  ENV['SUFFIX'] ||= ""
  case ENV['OS']
  when "ios"
    TestHelper.set_test_name(scenario)
    TestHelper.create_ios_driver
  when "android"
    TestHelper.set_test_name(scenario)
    TestHelper.create_android_driver
  else
    raise "OS Unsupported or undefined"
  end
  $driver.manage.timeouts.implicit_wait = DEFAULT_WAIT
end

Before('@web') do |scenario|
  TestHelper.set_test_name(scenario)
  TestHelper.set_browser
  TestHelper.start_driver
  $driver.manage.timeouts.implicit_wait = DEFAULT_WAIT
end

After ('@mobile, @mweb') do |scenario|
  job_id = $driver.send(:bridge).session_id
  TestHelper.update_job_success(job_id, !scenario.failed?) unless ENV['ENV'] == "local"
  $driver.quit unless ENV['ENV'] == "local"
end

After('@web') do |scenario| 
  SauceWhisk::Jobs.change_status $driver.session_id, !scenario.failed? unless ENV['ENV'] == "local"
  $driver.quit unless ENV['ENV'] == "local"
end

