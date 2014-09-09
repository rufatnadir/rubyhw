Given(/^I go to the "(.*?)" co\-branded site$/) do |site|
  @site = CoBrand.new(site)
end

Given(/^the localized elements for bay area should show$/) do
  @site.validate_bay_area_sports
end
