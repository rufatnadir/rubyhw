########################
### ARTICLE TYPES ###
########################
When(/^I navigate to a "(.*?)" article on mobile web$/) do |article_type|
  MobileWeb.new.go_to_article_type(article_type)
end
########################
### DEFAULT ###
########################
Then(/^the default mobile web article elements should show$/) do
  $driver.find_element(:css, '.border-box') unless ENV['URL_PARAMS'] == "&tsm=2"
  $driver.find_element(:css, '.article_title')
  $driver.find_element(:css, '.article_info')
  $driver.find_element(:css, '.article_body')
  $driver.find_element(:css, '.article_comments')
  $driver.find_element(:css, '.js-open-comments')
end

########################
### ARTICLE ###
########################
Then(/^the mobile web article elements should show$/) do
  unless ENV['URL_PARAMS'] == "&tsm=2" then
    $driver.find_element(:css,'ul.share-buttons')
    $driver.find_element(:css,'li.button--facebook')
    $driver.find_element(:css,'li.button--twitter')
    $driver.find_element(:css,'li.button--google-plus')
    $driver.find_element(:css,'li.button--reddit')
    $driver.find_element(:css,'li.button--comments')
  end
end
