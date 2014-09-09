require 'rubygems'
require 'rake'
require 'cucumber'
require 'selenium-webdriver'
require 'sauce'
require 'sauce_whisk'
require 'parallel_tests'
require 'json'
require 'rest_client'
require 'rspec'

class TestHelper
  def self.goto(url)
    $driver.navigate.to(BASE_URL+url)
  end

  def self.rest_jobs_url
    "https://#{AUTH_DETAILS}@saucelabs.com/rest/v1/#{ENV['SAUCE_USERNAME']}/jobs"
  end

  def self.update_job_success(job_id, success)
    RestClient.put "#{rest_jobs_url}/#{job_id}", {"passed" => success}.to_json, :content_type => :json
  end

  def self.create_ios_driver
    if ENV['ENV'] == "local"
      app_path = ''
    else
      app_path = "https://dl.dropboxusercontent.com/s/jg9z2w2116ns9uo/ts_ios.zip"
    end
    capabilities =
    {
      'browserName' => 'iOS 6.0',
      'platform' => 'Mac 10.8',
      'device' => 'iPhone Simulator',
      'app' => app_path,
      'name' => $feature_name
    }
    $driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => set_server_url)
  end

  def self.create_android_driver
    if ENV['ENV'] == "local"
      app_path = ''
    else
      app_path = "https://dl.dropboxusercontent.com/s/zax3dfz4mx813th/ts_android.zip"
    end
    capabilities =
    {
      'platform' => 'Linux',
      'version' => '4.2',
      'app' => app_path,
      'app-activity' => 'TsLaunchActivity',
      'app-package' => 'com.bleacherreport.android.teamstream',
      'device' => 'Android',
      'name' => $feature_name,
    }
    $driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => set_server_url)
  end

  def self.create_mobile_web_driver
    case ENV['OS']
    when "ios"
      capabilities = 
      {
        'app' => 'safari',
        'device' => 'iPhone Simulator',
        'version' => '6.1',
        'name' => $feature_name
      }
    when "android"
      capabilities = 
      {
        'app' => 'chrome',
        'device' => 'Android',
        'name' => $feature_name
      }
    end
    $driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => set_server_url)
  end

  def self.set_test_name(scenario)
    case scenario
    when Cucumber::Ast::Scenario
      part1 = scenario.feature.name
      part2 = scenario.name
    when Cucumber::Ast::OutlineTable::ExampleRow
      part1 = scenario.scenario_outline.feature.name
      part2 = scenario.scenario_outline.name
    end
    ENV['TEST_NAME'] = part1 + " - " + part2
    $feature_name = ENV['TEST_NAME']
  end

  def self.set_browser
    ENV['BROWSER'] ||= "chrome"
    case ENV['BROWSER'] 
    when "chrome"
      Sauce.config do |c|
        c[:browser] = "chrome"
        c[:version] = nil
        c[:os] = "OS X 10.8"
      end
    when "firefox"
      Sauce.config do |c|
        c[:browser] = "firefox"
        c[:version] = "21"
        c[:os] = "OS X 10.6"
      end
    else
      raise "unsupported browser!"
    end 
  end

  def self.start_driver
    # CHECK IF WE SHOULD RUN LOCALLY
    if ENV['ENV'] == "local" 
      $driver = Selenium::WebDriver.for BROWSER.to_sym
    else
      puts $feature_name
      $driver = Sauce::Selenium2.new(:name=>$feature_name)
    end
    # OPEN BROWSER TO SELECTED ENVIRONMENT
    $driver.navigate.to(BASE_URL)
    $driver.manage.window.maximize
  end

  def is_element_present(element_locator)
    begin
      $driver.find_element(:css, element_locator)
      return true
    rescue Selenium::WebDriver::Error::NoSuchElementError => e
      return false
    end
  end

  def self.set_server_url
    ##APPIUM
    if ENV['ENV'] == "local"
      return "http://127.0.0.1:4723/wd/hub" 
    else
      return "http://#{AUTH_DETAILS}@ondemand.saucelabs.com:80/wd/hub"
    end
  end
end